package kr.or.ddit.freelancer.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.company.service.ICompanyService;
import kr.or.ddit.freelancer.service.IFreeService;
import kr.or.ddit.freelancer.vo.FreeVO;
import kr.or.ddit.master.service.IinquiryService;
import kr.or.ddit.master.vo.AnswerVO;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.pay.service.IPayService;
import kr.or.ddit.prod.vo.ProdVO;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.AttVO;
import kr.or.ddit.vo.FaqVO;

@Controller
@RequestMapping("/free")
public class FreelancerController {
	@Inject
	private ICompanyService comService;
	@Inject
	private IinquiryService inquiryService;
	
	@Inject
	private IFreeService freeService;
	
	@Inject
	private IPayService service;
	
	@RequestMapping(value="/insertFree", method = RequestMethod.GET)
	public String freeInsert(Model model) {
		return "free/insertFree";
	}
	@RequestMapping(value="/main", method = RequestMethod.GET)
	public String freeMain(Model model) {
		List<BoardVO> notice = comService.noticeList5();
		model.addAttribute("notice",notice);
		return "free/main";
	}
	
	@PostMapping("/insert")
	public String insert(HttpServletRequest req,FreeVO free) {
		String goPage ="";
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		String memId = memberVO.getMemId();
		free.setMemId(memId);
		if (memberVO !=null) {
		System.out.println("free"+free);
		freeService.insertFree(free);
		goPage="free/main";
		}
		else {
			goPage = "redirect:/member/login";
		}
		return goPage;
	}
	
	@GetMapping("/freeList")
	public String freeList(Model model) {
		List<FreeVO> freeList = freeService.freeList();
		model.addAttribute("freeList",freeList);
		return "free/freeList";
	}
	
	@GetMapping("/notice")
	public String notice(Model model) {
		List<BoardVO> notice = comService.noticeList();
		model.addAttribute("notice",notice);
		return "free/notice";
	}
	
	@GetMapping("/projectForm")
	public String projectForm(HttpServletRequest req,Model model) {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		String memId = memberVO.getMemId();
		Date now = new Date();
		model.addAttribute("now",now);
		MemberVO vo = freeService.member(memId);
		model.addAttribute("vo",vo);
		return "free/projectForm";
	}
	
	@PostMapping("/insertProject")
	public String insertProject(HttpServletRequest req, AnnoVO anno,Model model)throws Exception {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		freeService.insertProject(req,anno);
		return "free/main";
	}
	
	@GetMapping("/projList")
	public String ProjList(Model model) {
		List<AnnoVO> projList = freeService.projList();
		Date now = new Date();
		model.addAttribute("projList",projList);
		model.addAttribute("now",now);
		return "free/projList";
	}
	@GetMapping("/freeDetail/{freeNum}")
	public String freeDetail(@PathVariable("freeNum")int freeNum,Model model) {
		FreeVO free = freeService.freeDetail(freeNum);
		model.addAttribute("free",free);
		return "free/detailFree";
	}
	
	@GetMapping("/projDetail/{annoId}")
	public String projDetail(@PathVariable("annoId")int annoId,Model model) {
		AnnoVO anno = freeService.projDetail(annoId);
		model.addAttribute("anno",anno);
		return "free/detailProj";
	}
	
	@GetMapping("/ht")
	public String ht() {
		return "free/ht";
	}
	@GetMapping("/qna")
	public String qna() {
		return "free/qna";
	}
	
	@RequestMapping(value = "/inquirylist", method = RequestMethod.GET)
	public String inquirylist(HttpServletRequest req ,Model model) throws Exception {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		String memId=memberVO.getMemId();
		List<BoardVO> inquirylist = freeService.inquirylist(memId);
		model.addAttribute("inquirylist",inquirylist);
		return "free/inquiryList";
	}
	
	@RequestMapping(value = "/qna/{boardId}" , method = RequestMethod.GET)
	public String inquiryDetail(@PathVariable("boardId") int boardId, Model model) throws Exception {
		BoardVO board = freeService.inquiry(boardId);
		AnswerVO answer = inquiryService.answerSelect(board.getBoardId());
		model.addAttribute("board",board);
		model.addAttribute("answer",answer);
		return "free/qna";
	}
	
	@GetMapping("/faq")
	public String faq(Model model) {
		List<FaqVO> faqList= freeService.selectFaq();
		model.addAttribute("faqList",faqList);
		return "free/faq";
	}
	
	@RequestMapping(value = "/insertInqu" , method = RequestMethod.POST)
	public String insertInqu(HttpServletRequest req,BoardVO board,Model model) {
		String goPage = "";
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		if(memberVO!=null) {
			board.setMemId(memberVO.getMemId());
			ServiceResult result = freeService.insertInqu(req, board);
			if(result.equals(ServiceResult.OK)) {
				goPage="redirect:/free/inquirylist";
			}else {
				goPage = "free/insertInqu";
			}
			
		}else {
			goPage = "redirect:/member/login";
		}
		
		return goPage;
	}
	@RequestMapping(value = "/insertInquForm" , method = RequestMethod.GET)
	public String insertInquForm(Model model) {
		return "free/insertInqu";
	}
	
	@RequestMapping(value = "/updateInquForm/{boardId}" , method = RequestMethod.GET)
	public String updateInquForm(@PathVariable("boardId")int boardId,Model model) {
		BoardVO board = freeService.inquiry(boardId);
		List<AttVO> attVO = freeService.selectBoardFile(boardId);
		model.addAttribute("board",board);
		model.addAttribute("att",attVO);
		return "free/updateInqu";
	}
	
	@RequestMapping(value="/updateInqu",method=RequestMethod.POST)
	public String boardUpdatDO(
			HttpServletRequest req,
			BoardVO boardVO, Model model) {
		String goPage = "";
		ServiceResult result = freeService.updateBoard(req, boardVO);
		
//		MemberVO memberVO = session.getAttribute("memberVO");
		if(result.equals(ServiceResult.OK)) {
			goPage = "redirect:/free/qna/"+boardVO.getBoardId();
		}else {
			model.addAttribute("boardVO", boardVO);
			goPage="free/updateInquForm";
		}
		return goPage;
	}
	
	@RequestMapping(value = "/deleteInqu/{boardId}" , method = RequestMethod.GET)
	public String deleteInqu(@PathVariable("boardId")int boardId,Model model) {
		freeService.delete(boardId);
		return "redirect:/free/inquirylist";
	}
	
	@GetMapping("/detailMem/{memId}")
	public String detailMem (Model model, @PathVariable("memId") String memId) {
		MemberVO member = comService.detailMem(memId);
		model.addAttribute("member",member);
		return "free/detailMem";
	}
	
	@GetMapping("/payCard/free")
	public String payCard (HttpServletRequest req,Model model) {
		Date now = new Date();
		model.addAttribute("now", now);
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		model.addAttribute("member",memberVO);
		
		return "free/payCard";
	}
	
	@GetMapping("/pay")
	public String pay(HttpServletRequest req,Model model) throws ParseException {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		model.addAttribute("member",memberVO);
		Date now = new Date();
		model.addAttribute("now", now);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
		Calendar rightNow = Calendar.getInstance(); 
		rightNow.add(Calendar.YEAR, 1);
		System.out.println("dfdddd"+rightNow);
		String strNowDate = simpleDateFormat.format(rightNow.getTime()); 
		Date date = simpleDateFormat.parse(strNowDate);
		System.out.println("strNowDate"+strNowDate);
		model.addAttribute("now30",date);
		return "free/pay";
	}
	
	@RequestMapping(value = "/payss", method = RequestMethod.POST)
	public String pay(ProdVO pay, Model model) throws Exception {
		System.out.println(pay);
		service.insertMem(pay);
		return "redirect:/free/payCard/free";
	}
	
	@GetMapping("/payCard/proj")
	public String proj (Model model) {
		Date now = new Date();
		model.addAttribute("now", now);
		return "free/payCardProj";
	}
	
	@GetMapping("/pay2")
	public String pa2y(HttpServletRequest req,Model model) throws ParseException {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		if (memberVO.getCompanyId() == "" || memberVO.getCompanyId() == null) {
			memberVO.setCompanyId("not Company");
		}
		model.addAttribute("member",memberVO);
		Date now = new Date();
		model.addAttribute("now", now);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
		Calendar rightNow = Calendar.getInstance(); 
		rightNow.add(Calendar.YEAR, 1);
		System.out.println("dfdddd"+rightNow);
		String strNowDate = simpleDateFormat.format(rightNow.getTime()); 
		Date date = simpleDateFormat.parse(strNowDate);
		System.out.println("strNowDate"+strNowDate);
		model.addAttribute("now30",date);
		return "free/pay2";
	}
	@RequestMapping(value = "/payss2", method = RequestMethod.POST)
	public String pay2(ProdVO pay, Model model) throws Exception {
		System.out.println(pay);
		service.insertComp(pay);
		return "redirect:/free/pay";
	}
	
	
	
	
	
	
	

}
