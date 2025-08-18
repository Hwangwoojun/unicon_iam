package egovframework.uni.news.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.let.cop.bbs.service.BoardMasterVO;
import egovframework.let.cop.bbs.service.BoardVO;
import egovframework.let.cop.bbs.service.EgovBBSAttributeManageService;
import egovframework.let.cop.bbs.service.EgovBBSManageService;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 템플릿 메인 페이지 컨트롤러 클래스(Sample 소스)
 * @author 실행환경 개발팀 JJY
 * @since 2011.08.31
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2011.08.31  JJY            최초 생성
 *
 * </pre>
 */
@Controller@SessionAttributes(types = ComDefaultVO.class)
public class EgovNewsController {
	
    @Resource(name = "EgovBBSManageService")
    private EgovBBSManageService bbsMngService;

    @Resource(name = "EgovBBSAttributeManageService")
    private EgovBBSAttributeManageService bbsAttrbService;
    
    @Resource(name = "EgovFileMngService")
    private EgovFileMngService fileMngService;

    @Resource(name = "EgovFileMngUtil")
    private EgovFileMngUtil fileUtil;

    @Resource(name = "propertiesService")
    protected EgovPropertyService propertyService;

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;

	
	@RequestMapping(value = "/kr/news/news")
	public String getNewsPage(HttpServletRequest request, ModelMap model,@ModelAttribute("searchVO") BoardVO boardVO)
	  throws Exception{


		model.addAttribute("gNum", "06");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "NEWS");
		model.addAttribute("sName", "NEWS");
	
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		
		if(boardVO.getBbsId().isEmpty()) {
			boardVO.setBbsId("News");
		}
		boardVO.setBbsId(boardVO.getBbsId());
		boardVO.setBbsId(boardVO.getBbsId());
		boardVO.setBbsNm(boardVO.getBbsNm());
		

		BoardMasterVO vo = new BoardMasterVO();

		vo.setBbsId(boardVO.getBbsId());
		vo.setUniqId(user.getUniqId());

		BoardMasterVO master = bbsAttrbService.selectBBSMasterInf(vo);

		//-------------------------------
		// 방명록이면 방명록 URL로 forward
		//-------------------------------
		if (master.getBbsTyCode().equals("BBST04")) {
		    return "forward:/cop/bbs/selectGuestList.do";
		}
		////-----------------------------

		boardVO.setPageUnit(propertyService.getInt("pageUnit"));
		boardVO.setPageSize(propertyService.getInt("pageSize"));

		PaginationInfo paginationInfo = new PaginationInfo();

		paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
		paginationInfo.setPageSize(boardVO.getPageSize());

		boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
		boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, vo.getBbsAttrbCode());
		int totCnt = Integer.parseInt((String)map.get("resultCnt"));

		paginationInfo.setTotalRecordCount(totCnt);

		//-------------------------------
		// 기본 BBS template 지정
		//-------------------------------
		if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
		    master.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
		}
		////-----------------------------

		model.addAttribute("resultList", map.get("resultList"));
		model.addAttribute("resultCnt", map.get("resultCnt"));
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("brdMstrVO", master);
		model.addAttribute("paginationInfo", paginationInfo);
		
		

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/news/news";
	}
	@RequestMapping(value = "/kr/news/news_view")
	public String getPublicationVeiwPage(@ModelAttribute("searchVO") BoardVO boardVO,HttpServletRequest request, ModelMap model)
	  throws Exception{


		
		LoginVO user = new LoginVO();
	    if(EgovUserDetailsHelper.isAuthenticated()){
	    	user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		}

		// 조회수 증가 여부 지정
		boardVO.setPlusCount(true);

		//---------------------------------
		// 2009.06.29 : 2단계 기능 추가
		//---------------------------------
		if (!boardVO.getSubPageIndex().equals("")) {
		    boardVO.setPlusCount(false);
		}
		////-------------------------------

		boardVO.setLastUpdusrId(user.getUniqId());
		BoardVO vo = bbsMngService.selectBoardArticle(boardVO);

		model.addAttribute("result", vo);

		model.addAttribute("sessionUniqId", user.getUniqId());

		//----------------------------
		// template 처리 (기본 BBS template 지정  포함)
		//----------------------------
		BoardMasterVO master = new BoardMasterVO();

		master.setBbsId(boardVO.getBbsId());
		master.setUniqId(user.getUniqId());

		BoardMasterVO masterVo = bbsAttrbService.selectBBSMasterInf(master);

		if (masterVo.getTmplatCours() == null || masterVo.getTmplatCours().equals("")) {
		    masterVo.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
		}

		model.addAttribute("brdMstrVO", masterVo);
		

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------
		model.addAttribute("gNum", "06");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "NEWS");
		model.addAttribute("sName", "NEWS");
	
		return "unicon/sub_menu/news/news_view";
	}
	
	@RequestMapping(value = "/eng/news/news")
	public String getNewsEngPage(HttpServletRequest request, ModelMap model,@ModelAttribute("searchVO") BoardVO boardVO)
			  throws Exception{


				model.addAttribute("gNum", "06");
				model.addAttribute("sNum", "01");
				model.addAttribute("gName", "NEWS");
				model.addAttribute("sName", "NEWS");
			
				LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
				
				if(boardVO.getBbsId().isEmpty()) {
					boardVO.setBbsId("News");
				}
				boardVO.setBbsId(boardVO.getBbsId());
				boardVO.setBbsId(boardVO.getBbsId());
				boardVO.setBbsNm(boardVO.getBbsNm());
				

				BoardMasterVO vo = new BoardMasterVO();

				vo.setBbsId(boardVO.getBbsId());
				vo.setUniqId(user.getUniqId());

				BoardMasterVO master = bbsAttrbService.selectBBSMasterInf(vo);

				//-------------------------------
				// 방명록이면 방명록 URL로 forward
				//-------------------------------
				if (master.getBbsTyCode().equals("BBST04")) {
				    return "forward:/cop/bbs/selectGuestList.do";
				}
				////-----------------------------

				boardVO.setPageUnit(propertyService.getInt("pageUnit"));
				boardVO.setPageSize(propertyService.getInt("pageSize"));

				PaginationInfo paginationInfo = new PaginationInfo();

				paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
				paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
				paginationInfo.setPageSize(boardVO.getPageSize());

				boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
				boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
				boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

				Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, vo.getBbsAttrbCode());
				int totCnt = Integer.parseInt((String)map.get("resultCnt"));

				paginationInfo.setTotalRecordCount(totCnt);

				//-------------------------------
				// 기본 BBS template 지정
				//-------------------------------
				if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
				    master.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
				}
				////-----------------------------

				model.addAttribute("resultList", map.get("resultList"));
				model.addAttribute("resultCnt", map.get("resultCnt"));
				model.addAttribute("boardVO", boardVO);
				model.addAttribute("brdMstrVO", master);
				model.addAttribute("paginationInfo", paginationInfo);
				

		return "uniconEng/sub_menu/news/news";
	}
	@RequestMapping(value = "/eng/news/news_view")
	public String getPublicationVeiwEngPage(@ModelAttribute("searchVO") BoardVO boardVO,HttpServletRequest request, ModelMap model)
			  throws Exception{
		
				LoginVO user = new LoginVO();
			    if(EgovUserDetailsHelper.isAuthenticated()){
			    	user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
				}

				// 조회수 증가 여부 지정
				boardVO.setPlusCount(true);

				//---------------------------------
				// 2009.06.29 : 2단계 기능 추가
				//---------------------------------
				if (!boardVO.getSubPageIndex().equals("")) {
				    boardVO.setPlusCount(false);
				}
				////-------------------------------

				boardVO.setLastUpdusrId(user.getUniqId());
				BoardVO vo = bbsMngService.selectBoardArticle(boardVO);

				model.addAttribute("result", vo);

				model.addAttribute("sessionUniqId", user.getUniqId());

				//----------------------------
				// template 처리 (기본 BBS template 지정  포함)
				//----------------------------
				BoardMasterVO master = new BoardMasterVO();

				master.setBbsId(boardVO.getBbsId());
				master.setUniqId(user.getUniqId());

				BoardMasterVO masterVo = bbsAttrbService.selectBBSMasterInf(master);

				if (masterVo.getTmplatCours() == null || masterVo.getTmplatCours().equals("")) {
				    masterVo.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
				}

				model.addAttribute("brdMstrVO", masterVo);
				

				// 공지사항 메인컨텐츠 조회 끝 -----------------------------------
				model.addAttribute("gNum", "06");
				model.addAttribute("sNum", "01");
				model.addAttribute("gName", "NEWS");
				model.addAttribute("sName", "NEWS");

		return "uniconEng/sub_menu/news/news_view";
	}
	
	
}