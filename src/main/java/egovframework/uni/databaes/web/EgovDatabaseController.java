package egovframework.uni.databaes.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import egovframework.com.cmm.ComDefaultVO;
import egovframework.let.cop.bbs.service.BoardVO;
import egovframework.let.cop.bbs.service.EgovBBSManageService;

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
public class EgovDatabaseController {
	
	/**
	 * EgovBBSManageService
	 */
	@Resource(name = "EgovBBSManageService")
    private EgovBBSManageService bbsMngService;

	@RequestMapping(value = "/kr/database/steel")
	public String getSteelPage(HttpServletRequest request, ModelMap model)
	  throws Exception{
		// 공지사항 메인 컨텐츠 조회 시작 ---------------------------------
				BoardVO boardVO = new BoardVO();
				boardVO.setPageUnit(5);
				boardVO.setPageSize(10);
				boardVO.setBbsId("BBSMSTR_AAAAAAAAAAAA");

				PaginationInfo paginationInfo = new PaginationInfo();

				paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
				paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
				paginationInfo.setPageSize(boardVO.getPageSize());

				boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
				boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
				boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

				Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, "BBSA02");
				model.addAttribute("notiList", map.get("resultList"));

				boardVO.setBbsId("BBSMSTR_BBBBBBBBBBBB");
				map = bbsMngService.selectBoardArticles(boardVO, "BBSA02");
				model.addAttribute("galList", map.get("resultList"));

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "철강");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/database/steel";
	}
	
	@RequestMapping(value = "/kr/database/transport")
	public String getTransportPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "02");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "수송");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/database/transport";
	}
	
	@RequestMapping(value = "/kr/database/electricity")
	public String getElectricityPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "전력");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/database/electricity";
	}
	
	@RequestMapping(value = "/kr/database/building")
	public String getBuildingPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "04");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "건물");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/database/building";
	}
	
	@RequestMapping(value = "/kr/database/forest")
	public String getForestPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "05");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "산림");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/database/forest";
	}
	
	@RequestMapping(value = "/eng/database/steel")
	public String getSteelEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{
		// 공지사항 메인 컨텐츠 조회 시작 ---------------------------------
				BoardVO boardVO = new BoardVO();
				boardVO.setPageUnit(5);
				boardVO.setPageSize(10);
				boardVO.setBbsId("BBSMSTR_AAAAAAAAAAAA");

				PaginationInfo paginationInfo = new PaginationInfo();

				paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
				paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
				paginationInfo.setPageSize(boardVO.getPageSize());

				boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
				boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
				boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

				Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, "BBSA02");
				model.addAttribute("notiList", map.get("resultList"));

				boardVO.setBbsId("BBSMSTR_BBBBBBBBBBBB");
				map = bbsMngService.selectBoardArticles(boardVO, "BBSA02");
				model.addAttribute("galList", map.get("resultList"));

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Steel");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/database/steel";
	}
	
	@RequestMapping(value = "/eng/database/transport")
	public String getTransportEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "02");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Transport");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/database/transport";
	}
	
	@RequestMapping(value = "/eng/database/electricity")
	public String getElectricityEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Electricity");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/database/electricity";
	}
	
	@RequestMapping(value = "/eng/database/building")
	public String getBuildingEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "04");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Building");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/database/building";
	}
	
	@RequestMapping(value = "/eng/database/forest")
	public String getForestEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "05");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Forest");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/database/forest";
	}
	
}