//<<<<<<< .mine
//package kr.or.ddit.myPage.controller;
//
//import java.util.List;
//
//import javax.inject.Inject;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.apache.commons.lang.StringUtils;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import kr.or.ddit.ServiceResult;
//import kr.or.ddit.member.vo.MemberVO;
//import kr.or.ddit.myPage.service.IMypageService;
//import kr.or.ddit.myPage.vo.CoverletterItemVO;
//import kr.or.ddit.myPage.vo.CoverletterVO;
//import kr.or.ddit.myPage.vo.NotificationVO;
//import kr.or.ddit.myPage.vo.ResumeVO;
//import kr.or.ddit.vo.PaginationInfoVO;
//import lombok.extern.slf4j.Slf4j;
//
//@Slf4j
//@RequestMapping("/myPage")
//public class MyPageController2 {
//	
//	@Inject
//	private IMypageService mypageService;
//	
//	@RequestMapping("/main")
//	public String main() {
//		return "myPage/myPageMain";
//	}
//	
//	@RequestMapping("/memInfo")
//	public String memInfo() {
//		return "myPage/memInfo";
//	}
//	
//	@RequestMapping(value = "/notification/list", method = RequestMethod.GET)
//	public String notificationList(
//			@RequestParam(name="page", required=false, defaultValue="1") int currentPage, Model model) {
//		
//		PaginationInfoVO<NotificationVO> pagingVO = new PaginationInfoVO<NotificationVO>();
//		
//		pagingVO.setCurrentPage(currentPage);
//		int totalRecord = mypageService.selectNotificationCount(pagingVO);		// 총 게시글 수 얻어 옴
//		pagingVO.setTotalRecord(totalRecord);
//		
//		List<NotificationVO> notificationList = mypageService.selectNotificationList(pagingVO);		// 위에서 만들어진 pagingVO를 다시 list쪽에 넘겨 줌 
//		pagingVO.setDataList(notificationList);
//		
//		model.addAttribute("pagingVO", pagingVO);
//		
//		return "myPage/notification";
//	}
//	
//	@RequestMapping(value="/notification/delete", method=RequestMethod.POST)
//	public String notificationDelete(int notificationId, Model model) {
//		String goPage = "";
//		ServiceResult result = mypageService.deleteNotification(notificationId);
//		
//		if (result.equals(ServiceResult.OK)) {
//			goPage = "redirect:/myPage/notification/list";
//			
//		} else {
//			goPage = "myPage/notification/list";
//		}
//		return goPage;
//	}
//
//	@RequestMapping(value="/resume/list", method=RequestMethod.GET)
//	public String resumeList(HttpServletRequest req,
//			@RequestParam(name="page", required=false, defaultValue = "1") int currentPage, 
//			@RequestParam(required=false, defaultValue="title") String searchType,
//			@RequestParam(required=false) String searchWord,
//			Model model) {
//		HttpSession session = req.getSession();
//		session.getAttribute("memberVO");
//		PaginationInfoVO<ResumeVO> pagingVO = new PaginationInfoVO<ResumeVO>();
//		
//		if (StringUtils.isNotBlank(searchWord)) {
//			pagingVO.setSearchType(searchType);
//			pagingVO.setSearchType(searchType);
//			model.addAttribute("searchType", searchType);
//			model.addAttribute("searchWord", searchWord);
//		}
//
//		pagingVO.setCurrentPage(currentPage);
//		int totalRecord = mypageService.selectResumeCount(pagingVO);
//		pagingVO.setTotalRecord(totalRecord);
//		
//		List<ResumeVO> resumeList = mypageService.selectResumeList(pagingVO);
//		System.out.println("resumeList >> " + resumeList);
//		pagingVO.setDataList(resumeList);
//		
//		model.addAttribute("pagingVO", pagingVO);
//		model.addAttribute("list", resumeList);
//		
//		return "myPage/resumeList";
//	}
//
//	@RequestMapping(value="/resume/insert", method=RequestMethod.GET)
//	public String resumeInsertForm(HttpServletRequest req, Model model, ResumeVO resume) {
//		HttpSession session = req.getSession();
//		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
//		model.addAttribute("resume", resume);
//		model.addAttribute("memberVO", memberVO);
//		return "myPage/resumeInsert";
//	}
//	
//	@RequestMapping(value="/resume/insert", method=RequestMethod.POST)
//	public String resumeInsert(HttpServletRequest req, Model model, ResumeVO resume) {
//		HttpSession session = req.getSession();
//		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
//		log.info("세션>> " + session);
//		log.info("resume>> " + resume);
////		mypageService.insertResume(req, resume);
//		return "redirect:/myPage/resume/detail?resumeId=" + resume.getResumeId();
//	}
//	
//	@RequestMapping(value="/resume/detail", method=RequestMethod.GET)
//	public String resumeDetail(HttpServletRequest req, int resumeId, Model model) {
//		HttpSession session = req.getSession();
//		session.getAttribute("memberVO");
//		
//		MemberVO member = mypageService.getMemberByResumeId(resumeId);
//		System.out.println("member >> " + member);
//		ResumeVO resume = mypageService.resumeDetail(req, resumeId);
//		
//		model.addAttribute("resume", resume);
//		model.addAttribute("member", member);
//		return "myPage/resumeDetail";
//	}
//	
//	@RequestMapping(value="/resume/modify", method=RequestMethod.GET)
//	public String resumeModify(HttpServletRequest req, int resumeId, Model model) {
//		MemberVO member = mypageService.getMemberByResumeId(resumeId);
//		ResumeVO resume = mypageService.resumeDetail(req, resumeId);
//		model.addAttribute("member", member);
//		model.addAttribute("resume", resume);
//		model.addAttribute("status", "u");
//		return "myPage/resumeInsert";
//	}
//	
//	@RequestMapping(value="/resume/modify", method=RequestMethod.POST)
//	public String resumeModify(HttpServletRequest req, ResumeVO resume, Model model) {
//		HttpSession session = req.getSession();
//		session.getAttribute("memberVO");
//		mypageService.modifyResume(req, resume);
//		return "redirect:/myPage/resume/detail?resumeId=" + resume.getResumeId();
//	}
//	
//	@RequestMapping(value="/resume/delete", method=RequestMethod.POST)
//	public String resumeDelete(HttpServletRequest req, int resumeId, Model model) {
//		HttpSession session = req.getSession();
//		session.getAttribute("memberVO");
//		mypageService.deleteResume(req, resumeId);
//		return "redirect:/myPage/resume/list";
//	}
//	/*
//	@RequestMapping(value="/coverletter/insertItem", method=RequestMethod.GET)
//	public String coverletterItemsInsertForm(HttpServletRequest req, Model model) {
//		
//		HttpSession session = req.getSession();
//		session.getAttribute("memberVO");
////		model.addAttribute("covltrItem", covltrItemList);
//		return "myPage/coverletterInsert";
//	}
//	
//	@RequestMapping(value="/coverletter/insertItem", method=RequestMethod.POST)
//	public String coverletterItemsInsert (HttpServletRequest req, Model model, CoverletterItemVO covltrItem) {
//		
//		HttpSession session = req.getSession();
//		session.getAttribute("memberVO");
//		
//		log.info("세션 >> " + session);
//		mypageService.insertCovltrItems(req, covltrItem);
//		
//		return "redirect:/myPage/coverletter/itemList";
//	}
//	
//	@RequestMapping(value="/coverletter/modifyItem", method=RequestMethod.GET)
//	public String coverletterItemsModify(HttpServletRequest req, int covltrItemId, Model model) {
//		CoverletterItemVO covltrItem = mypageService.coverletterDetail(req, covltrItemId);
//		model.addAttribute("covltrItem", covltrItem);
//		model.addAttribute("status", "u");
//		return "myPage/coverletterInsert";
//		
//	}
//	
//	@RequestMapping(value="/coverletter/modifyItem", method=RequestMethod.POST)
//	public String coverletterItemsModify(HttpServletRequest req, CoverletterItemVO covltrItem, Model model) {
//		HttpSession session = req.getSession();
//		session.getAttribute("memberVO");
//		mypageService.modifyCoverletterItems (req, covltrItem);
//		return "redirect:/myPage/coverletter/items";
//	}
//	
//	@RequestMapping(value="/coverletter/itemList", method=RequestMethod.GET)
//	public String coverletterItems (HttpServletRequest req, Model model) {
//		HttpSession session = req.getSession();
//		MemberVO member = (MemberVO) session.getAttribute("memberVO");
//		List<CoverletterItemVO> covltrItemList = mypageService.selectCovltrItemList(req, member.getMemId());
//		System.out.println("covltrItemList >> " + covltrItemList);
//		model.addAttribute("list", covltrItemList);
//		return "myPage/coverletterItems";
//	}
//
//	@RequestMapping("/coverletter/list")
//	public String coverletterList() {
//		return "myPage/coverletterList";
//	}
//	
//	
//    @RequestMapping(value="/coverletter/insert", method=RequestMethod.POST)
//	@ResponseBody
//    public ResponseEntity<String> insertCoverletter(@RequestParam(value = "checkedIds") String checkedIds, @RequestParam("covltrTitle") String covltrTitle) {
//		
//    	System.out.println(checkedIds);
//    	HttpHeaders responseHeaders = new HttpHeaders();
//    	responseHeaders.add("Content-Type", "text/html; charset=UTF-8");
//    	mypageService.insertCoverletter(checkedIds, covltrTitle);
//		return new ResponseEntity<String>("자기소개서 등록이 완료되었습니다.", responseHeaders, HttpStatus.OK);
//    }
//	*/
//
//
//	
//	
//}
//||||||| .r319986
//=======
////package kr.or.ddit.myPage.controller;
////
////import java.util.List;
////
////import javax.inject.Inject;
////import javax.servlet.http.HttpServletRequest;
////import javax.servlet.http.HttpSession;
////
////import org.apache.commons.lang.StringUtils;
////import org.springframework.http.HttpHeaders;
////import org.springframework.http.HttpStatus;
////import org.springframework.http.ResponseEntity;
////import org.springframework.stereotype.Controller;
////import org.springframework.ui.Model;
////import org.springframework.validation.BindingResult;
////import org.springframework.web.bind.annotation.GetMapping;
////import org.springframework.web.bind.annotation.PostMapping;
////import org.springframework.web.bind.annotation.RequestBody;
////import org.springframework.web.bind.annotation.RequestMapping;
////import org.springframework.web.bind.annotation.RequestMethod;
////import org.springframework.web.bind.annotation.RequestParam;
////import org.springframework.web.bind.annotation.ResponseBody;
////
////import kr.or.ddit.ServiceResult;
////import kr.or.ddit.member.vo.MemberVO;
////import kr.or.ddit.myPage.service.IMypageService;
////import kr.or.ddit.myPage.vo.CoverletterItemVO;
////import kr.or.ddit.myPage.vo.CoverletterVO;
////import kr.or.ddit.myPage.vo.NotificationVO;
////import kr.or.ddit.myPage.vo.ResumeVO;
////import kr.or.ddit.vo.PaginationInfoVO;
////import lombok.extern.slf4j.Slf4j;
////
////@Slf4j
////@RequestMapping("/myPage")
////public class MyPageController2 {
////	
////	@Inject
////	private IMypageService mypageService;
////	
////	@RequestMapping("/main")
////	public String main() {
////		return "myPage/myPageMain";
////	}
////	
////	@RequestMapping("/memInfo")
////	public String memInfo() {
////		return "myPage/memInfo";
////	}
////	
////	@RequestMapping(value = "/notification/list", method = RequestMethod.GET)
////	public String notificationList(
////			@RequestParam(name="page", required=false, defaultValue="1") int currentPage, Model model) {
////		
////		PaginationInfoVO<NotificationVO> pagingVO = new PaginationInfoVO<NotificationVO>();
////		
////		pagingVO.setCurrentPage(currentPage);
////		int totalRecord = mypageService.selectNotificationCount(pagingVO);		// 총 게시글 수 얻어 옴
////		pagingVO.setTotalRecord(totalRecord);
////		
////		List<NotificationVO> notificationList = mypageService.selectNotificationList(pagingVO);		// 위에서 만들어진 pagingVO를 다시 list쪽에 넘겨 줌 
////		pagingVO.setDataList(notificationList);
////		
////		model.addAttribute("pagingVO", pagingVO);
////		
////		return "myPage/notification";
////	}
////	
////	@RequestMapping(value="/notification/delete", method=RequestMethod.POST)
////	public String notificationDelete(int notificationId, Model model) {
////		String goPage = "";
////		ServiceResult result = mypageService.deleteNotification(notificationId);
////		
////		if (result.equals(ServiceResult.OK)) {
////			goPage = "redirect:/myPage/notification/list";
////			
////		} else {
////			goPage = "myPage/notification/list";
////		}
////		return goPage;
////	}
////
////
////	@RequestMapping(value="/resume/list", method=RequestMethod.GET)
////	public String resumeList(HttpServletRequest req,
////			@RequestParam(name="page", required=false, defaultValue = "1") int currentPage, 
////			@RequestParam(required=false, defaultValue="title") String searchType,
////			@RequestParam(required=false) String searchWord,
////			Model model) {
////		HttpSession session = req.getSession();
////		session.getAttribute("memberVO");
////		PaginationInfoVO<ResumeVO> pagingVO = new PaginationInfoVO<ResumeVO>();
////		
////		if (StringUtils.isNotBlank(searchWord)) {
////			pagingVO.setSearchType(searchType);
////			pagingVO.setSearchType(searchType);
////			model.addAttribute("searchType", searchType);
////			model.addAttribute("searchWord", searchWord);
////		}
////
////		pagingVO.setCurrentPage(currentPage);
////		int totalRecord = mypageService.selectResumeCount(pagingVO);
////		pagingVO.setTotalRecord(totalRecord);
////		
////		List<ResumeVO> resumeList = mypageService.selectResumeList(pagingVO);
////		System.out.println("resumeList >> " + resumeList);
////		pagingVO.setDataList(resumeList);
////		
////		model.addAttribute("pagingVO", pagingVO);
////		model.addAttribute("list", resumeList);
////		
////		return "myPage/resumeList";
////	}
////
////	@RequestMapping(value="/resume/insert", method=RequestMethod.GET)
////	public String resumeInsertForm(HttpServletRequest req, Model model, ResumeVO resume) {
////		HttpSession session = req.getSession();
////		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
////		model.addAttribute("resume", resume);
////		model.addAttribute("memberVO", memberVO);
////		return "myPage/resumeInsert";
////	}
////	
////	@RequestMapping(value="/resume/insert", method=RequestMethod.POST)
////	public String resumeInsert(HttpServletRequest req, Model model, ResumeVO resume) {
////		HttpSession session = req.getSession();
////		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
////		log.info("세션>> " + session);
////		log.info("resume>> " + resume);
////		mypageService.insertResume(req, resume);
////		return "redirect:/myPage/resume/detail?resumeId=" + resume.getResumeId();
////	}
////	
////	@RequestMapping(value="/resume/detail", method=RequestMethod.GET)
////	public String resumeDetail(HttpServletRequest req, int resumeId, Model model) {
////		HttpSession session = req.getSession();
////		session.getAttribute("memberVO");
////		
////		MemberVO member = mypageService.getMemberByResumeId(resumeId);
////		System.out.println("member >> " + member);
////		ResumeVO resume = mypageService.resumeDetail(req, resumeId);
////		
////		model.addAttribute("resume", resume);
////		model.addAttribute("member", member);
////		return "myPage/resumeDetail";
////	}
////	
////	@RequestMapping(value="/resume/modify", method=RequestMethod.GET)
////	public String resumeModify(HttpServletRequest req, int resumeId, Model model) {
////		MemberVO member = mypageService.getMemberByResumeId(resumeId);
////		ResumeVO resume = mypageService.resumeDetail(req, resumeId);
////		model.addAttribute("member", member);
////		model.addAttribute("resume", resume);
////		model.addAttribute("status", "u");
////		return "myPage/resumeInsert";
////	}
////	
////	@RequestMapping(value="/resume/modify", method=RequestMethod.POST)
////	public String resumeModify(HttpServletRequest req, ResumeVO resume, Model model) {
////		HttpSession session = req.getSession();
////		session.getAttribute("memberVO");
////		mypageService.modifyResume(req, resume);
////		return "redirect:/myPage/resume/detail?resumeId=" + resume.getResumeId();
////	}
////	
////	@RequestMapping(value="/resume/delete", method=RequestMethod.POST)
////	public String resumeDelete(HttpServletRequest req, int resumeId, Model model) {
////		HttpSession session = req.getSession();
////		session.getAttribute("memberVO");
////		mypageService.deleteResume(req, resumeId);
////		return "redirect:/myPage/resume/list";
////	}
////	/*
////	@RequestMapping(value="/coverletter/insertItem", method=RequestMethod.GET)
////	public String coverletterItemsInsertForm(HttpServletRequest req, Model model) {
////		
////		HttpSession session = req.getSession();
////		session.getAttribute("memberVO");
//////		model.addAttribute("covltrItem", covltrItemList);
////		return "myPage/coverletterInsert";
////	}
////	
////	@RequestMapping(value="/coverletter/insertItem", method=RequestMethod.POST)
////	public String coverletterItemsInsert (HttpServletRequest req, Model model, CoverletterItemVO covltrItem) {
////		
////		HttpSession session = req.getSession();
////		session.getAttribute("memberVO");
////		
////		log.info("세션 >> " + session);
////		mypageService.insertCovltrItems(req, covltrItem);
////		
////		return "redirect:/myPage/coverletter/itemList";
////	}
////	
////	@RequestMapping(value="/coverletter/modifyItem", method=RequestMethod.GET)
////	public String coverletterItemsModify(HttpServletRequest req, int covltrItemId, Model model) {
////		CoverletterItemVO covltrItem = mypageService.coverletterDetail(req, covltrItemId);
////		model.addAttribute("covltrItem", covltrItem);
////		model.addAttribute("status", "u");
////		return "myPage/coverletterInsert";
////		
////	}
////	
////	@RequestMapping(value="/coverletter/modifyItem", method=RequestMethod.POST)
////	public String coverletterItemsModify(HttpServletRequest req, CoverletterItemVO covltrItem, Model model) {
////		HttpSession session = req.getSession();
////		session.getAttribute("memberVO");
////		mypageService.modifyCoverletterItems (req, covltrItem);
////		return "redirect:/myPage/coverletter/items";
////	}
////	
////	@RequestMapping(value="/coverletter/itemList", method=RequestMethod.GET)
////	public String coverletterItems (HttpServletRequest req, Model model) {
////		HttpSession session = req.getSession();
////		MemberVO member = (MemberVO) session.getAttribute("memberVO");
////		List<CoverletterItemVO> covltrItemList = mypageService.selectCovltrItemList(req, member.getMemId());
////		System.out.println("covltrItemList >> " + covltrItemList);
////		model.addAttribute("list", covltrItemList);
////		return "myPage/coverletterItems";
////	}
////
////	@RequestMapping("/coverletter/list")
////	public String coverletterList() {
////		return "myPage/coverletterList";
////	}
////	
////	
////    @RequestMapping(value="/coverletter/insert", method=RequestMethod.POST)
////	@ResponseBody
////    public ResponseEntity<String> insertCoverletter(@RequestParam(value = "checkedIds") String checkedIds, @RequestParam("covltrTitle") String covltrTitle) {
////		
////    	System.out.println(checkedIds);
////    	HttpHeaders responseHeaders = new HttpHeaders();
////    	responseHeaders.add("Content-Type", "text/html; charset=UTF-8");
////    	mypageService.insertCoverletter(checkedIds, covltrTitle);
////		return new ResponseEntity<String>("자기소개서 등록이 완료되었습니다.", responseHeaders, HttpStatus.OK);
////    }
////	*/
////
////
////	
////	
////}
//>>>>>>> .r320136
