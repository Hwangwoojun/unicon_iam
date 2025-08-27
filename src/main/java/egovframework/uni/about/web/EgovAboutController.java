package egovframework.uni.about.web;

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
public class EgovAboutController {

	@RequestMapping(value = "/kr/about/assignment")
	public String getAssignmentPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "과제소개");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/about/assignment";
	}
	
	@RequestMapping(value = "/kr/about/greetings")
	public String getGreetingsPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "02");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "인사말");

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/about/greetings";
	}
	
	@RequestMapping(value = "/kr/about/researcher")
	public String getResearcherPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "연구진 소개");
		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/about/researcher";
	}
	
	@RequestMapping(value = "/kr/about/researcher_view")
	public String getResearcheViewrPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "03");

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/about/researcher_view";
	}
	
	@RequestMapping(value = "/kr/about/location")
	public String getLocationPage(HttpServletRequest request, ModelMap model)
	  throws Exception{

		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "04");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "오시는 길");

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "unicon/sub_menu/about/location";
	}
	
	
	
	//eng 페이지
	@RequestMapping(value = "/eng/about/assignment")
	public String getAssignmentEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "01");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "About Project");
	

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/about/assignment";
	}
	
	@RequestMapping(value = "/eng/about/greetings")
	public String getGreetingsEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "02");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "Greetings");

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/about/greetings";
	}
	
	@RequestMapping(value = "/eng/about/researcher")
	public String getResearcherEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "Researchers");
		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/about/researcher";
	}
	
	@RequestMapping(value = "/eng/about/researcher_view")
	public String getResearcheViewrEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{


		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "03");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "Researcher");

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/about/researcher_view";
	}
	
	@RequestMapping(value = "/eng/about/location")
	public String getLocationEngPage(HttpServletRequest request, ModelMap model)
	  throws Exception{

		model.addAttribute("gNum", "01");
		model.addAttribute("sNum", "04");
		model.addAttribute("gName", "About UNICON");
		model.addAttribute("sName", "Contact");

		// 공지사항 메인컨텐츠 조회 끝 -----------------------------------

		return "uniconEng/sub_menu/about/location";
	}
	
}