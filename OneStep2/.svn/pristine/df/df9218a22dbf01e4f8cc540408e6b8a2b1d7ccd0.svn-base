package kr.or.ddit.master.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.master.service.IMasternoService;
import kr.or.ddit.member.vo.MemberVO;

@Controller
@RequestMapping("/master")
public class MasterNoticeController {

	@Inject
	private IMasternoService manoService;

	
	// 공지사항 List
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public String noitceList(Model model) throws Exception {
		List<BoardVO> noticeList = manoService.list();
		model.addAttribute("noticeList",noticeList);
		return "master/noticeList";
	}
	
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET )
	public String noticeDetail(Model model, int boardId) throws Exception {
		BoardVO noticeDetail = manoService.detail(boardId);
		model.addAttribute("noticeDetail",noticeDetail);
		return "master/noticeDetail";
	}
	
	// 공지사항 insert / update 페이지 이동
	@RequestMapping(value = "/noticeForm", method = RequestMethod.GET)
	public String noticeForm() throws Exception {
		return "master/noticeModify";
	}
	
	@RequestMapping(value = "/updateForm", method = RequestMethod.GET)
	public String noticeForm(Model model, int boardId) throws Exception {
			BoardVO noticeUpdate = manoService.detail(boardId);
			model.addAttribute("noticeUpdate",noticeUpdate);
			model.addAttribute("status","u");
			return "master/noticeModify";
	}
	
	// 공지사항 insert
	@RequestMapping(value = "/noticeInsert", method = RequestMethod.POST)
	public String noticeInsert(HttpServletRequest req, BoardVO boardVO) throws Exception {
		String goPage = "";
		HttpSession session = req.getSession();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		String memId = memberVO.getMemId();
		if(memberVO!=null) {
			boardVO.setMemId(memId);
			ServiceResult result = manoService.insert(boardVO);
			if(result.equals(ServiceResult.OK)) {
				goPage = "redirect:/master/noticeList";
			}else {
				goPage = "master/noticeInsert";
			}
		} else {
			goPage = "member/login";
		}
		return goPage;
	}
	
	@RequestMapping(value = "/noticeUpdate", method = RequestMethod.POST)
	public String noticeUpdate(HttpServletRequest req, BoardVO boardVO) throws Exception {
		String goPage = "";
		HttpSession session = req.getSession();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		if(memberVO!=null) {
			boardVO.setMemId(memberVO.getMemId());
			ServiceResult result = manoService.update(boardVO);
			if(result.equals(ServiceResult.OK)) {
				goPage = "redirect:/master/noticeDetail?boardId=" + boardVO.getBoardId();
			}else {
				goPage = "master/noticeInsert";
			}
		} else {
			goPage = "member/login";
		}
		return goPage;
	}
	
	// 삭제
	@RequestMapping(value="/deleteForm", method = RequestMethod.POST)
	public String noticeDelete(
			HttpServletRequest req, 
			int boardId, Model model) throws Exception {
		String gopage = "";
		ServiceResult result = manoService.delete(boardId);
		if(result.equals(ServiceResult.OK)) {
			gopage = "redirect:/master/noticeList";
		}else {
			gopage = "redirect:/master/masterDetail?boardId="+boardId;
		}
		return gopage;
	}
	
}
