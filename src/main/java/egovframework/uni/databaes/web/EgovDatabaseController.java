package egovframework.uni.databaes.web;

import java.util.Map;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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
	public String getSteelPage(HttpServletRequest request,
							   @RequestParam(name = "io", required = false, defaultValue = "input") String io,
							   ModelMap model) throws Exception {
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
		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "철강");

		// io 정규화
		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "unicon/sub_menu/database/" + io + "/steel";
	}

	@RequestMapping(value = "/kr/database/transport")
	public String getTransportPage(HttpServletRequest request,
								   @RequestParam(name = "io", required = false, defaultValue = "input") String io,
								   ModelMap model) throws Exception {

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "02");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "수송");

		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "unicon/sub_menu/database/" + io + "/transport";
	}

	@RequestMapping(value = "/kr/database/electricity")
	public String getElectricityPage(HttpServletRequest request,
									 @RequestParam(name = "io", required = false, defaultValue = "input") String io,
									 ModelMap model) throws Exception {

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "전력");

		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "unicon/sub_menu/database/" + io + "/electricity";
	}

	@RequestMapping(value = "/kr/database/building")
	public String getBuildingPage(HttpServletRequest request,
								  @RequestParam(name = "io", required = false, defaultValue = "input") String io,
								  ModelMap model) throws Exception {

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "04");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "건물");

		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "unicon/sub_menu/database/" + io + "/building";
	}

	@RequestMapping(value = "/kr/database/forest")
	public String getForestPage(HttpServletRequest request,
								@RequestParam(name = "io", required = false, defaultValue = "input") String io,
								ModelMap model) throws Exception {

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "05");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "산림");

		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "unicon/sub_menu/database/" + io + "/forest";
	}

	@RequestMapping(value = "/eng/database/steel")
	public String getSteelEngPage(HttpServletRequest request,
								  @RequestParam(name = "io", required = false, defaultValue = "input") String io,
								  ModelMap model) throws Exception {

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
		// ---- 공지사항 끝 ----

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Steel");

		// io 정규화
		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "uniconEng/sub_menu/database/" + io + "/steel";
	}

	@RequestMapping(value = "/eng/database/transport")
	public String getTransportEngPage(HttpServletRequest request,
									  @RequestParam(name = "io", required = false, defaultValue = "input") String io,
									  ModelMap model) throws Exception {

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "02");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Transport");

		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "uniconEng/sub_menu/database/" + io + "/transport";
	}

	@RequestMapping(value = "/eng/database/electricity")
	public String getElectricityEngPage(HttpServletRequest request,
										@RequestParam(name = "io", required = false, defaultValue = "input") String io,
										ModelMap model) throws Exception {

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Electricity");

		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "uniconEng/sub_menu/database/" + io + "/electricity";
	}

	@RequestMapping(value = "/eng/database/building")
	public String getBuildingEngPage(HttpServletRequest request,
									 @RequestParam(name = "io", required = false, defaultValue = "input") String io,
									 ModelMap model) throws Exception {

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "04");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Building");

		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "uniconEng/sub_menu/database/" + io + "/building";
	}

	@RequestMapping(value = "/eng/database/forest")
	public String getForestEngPage(HttpServletRequest request,
								   @RequestParam(name = "io", required = false, defaultValue = "input") String io,
								   ModelMap model) throws Exception {

		model.addAttribute("gNum", "03");
		model.addAttribute("sNum", "05");
		model.addAttribute("gName", "Database");
		model.addAttribute("sName", "Forest");

		io = "output".equals(io) ? "output" : "input";
		model.addAttribute("io", io);

		return "uniconEng/sub_menu/database/" + io + "/forest";
	}
	
}