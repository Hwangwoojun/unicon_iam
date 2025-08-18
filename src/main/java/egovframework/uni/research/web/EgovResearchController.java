package egovframework.uni.research.web;

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
public class EgovResearchController {

	@RequestMapping(value = "/kr/research/steel")
	public String getSteelPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "철강");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/research/steel";
	}
	
	@RequestMapping(value = "/kr/research/transport")
	public String getTransportPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "02");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "수송");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/research/transport";
	}
	
	@RequestMapping(value = "/kr/research/electricity")
	public String getElectricityPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "전력");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/research/electricity";
	}
	
	@RequestMapping(value = "/kr/research/building")
	public String getBuildingPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "04");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "건물");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/research/building";
	}
	
	@RequestMapping(value = "/kr/research/forest")
	public String getForestPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "05");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "산림");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/research/forest";
	}
	
	@RequestMapping(value = "/eng/research/steel")
	public String getSteelEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "Steel");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/research/steel";
	}
	
	@RequestMapping(value = "/eng/research/transport")
	public String getTransportEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "02");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "Transport");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/research/transport";
	}
	
	@RequestMapping(value = "/eng/research/electricity")
	public String getElectricityEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "Electricity");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/research/electricity";
	}
	
	@RequestMapping(value = "/eng/research/building")
	public String getBuildingEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "04");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "Building");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/research/building";
	}
	
	@RequestMapping(value = "/eng/research/forest")
	public String getForestEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "02");
		model.addAttribute("sNum", "05");
		model.addAttribute("gName", "Research");
		model.addAttribute("sName", "Forest");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/research/forest";
	}
	
}