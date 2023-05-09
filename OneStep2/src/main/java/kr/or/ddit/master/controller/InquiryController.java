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
import kr.or.ddit.alarm.service.IAlarmService;
import kr.or.ddit.alarm.vo.NotificationVO;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.master.service.IinquiryService;
import kr.or.ddit.master.vo.AnswerVO;
import kr.or.ddit.member.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/master")
public class InquiryController {

	@Inject
	private IinquiryService inquiryService;
	
	@Inject
	private IAlarmService alarmService;
			
	// 문의 리스트
	@RequestMapping(value = "/inquirylist", method = RequestMethod.GET)
	public String inquirylist(Model model) throws Exception {
		List<BoardVO> inquirylist = inquiryService.inquirylist();
		List<AnswerVO> answerList = inquiryService.answerList();
		model.addAttribute("inquirylist",inquirylist);
		model.addAttribute("answerList",answerList);
		return "master/inquiryList";
	}
	
	// 문의 디테일
	@RequestMapping(value = "/inquirydetail" , method = RequestMethod.GET)
	public String inquiryDetail(Model model, int boardId) throws Exception {
		BoardVO inquiryDetail = inquiryService.inquiryDetail(boardId);
		AnswerVO answer = inquiryService.answerSelect(boardId);
		model.addAttribute("answer",answer);
		model.addAttribute("inquiryDetail", inquiryDetail);
		return "master/inquiryDetail";
	}
	
	// 문의 답변
	@RequestMapping(value = "/answer", method = RequestMethod.GET)
	public String answer(Model model ,int boardId) {
		model.addAttribute("boardId",boardId);
		return "master/answer";
	}
	
	// 문의 답변 update
	@RequestMapping(value = "/updateAnswerForm", method = RequestMethod.GET)
	public String updateAnswerForm(Model model, int answerId, int boardId) throws Exception {
		AnswerVO updateAnswer = inquiryService.answerDetail(answerId);
		model.addAttribute("boardId",boardId);
		model.addAttribute("updateAnswer",updateAnswer);
		model.addAttribute("status","u");
		return "master/answer";
	}
	
	// 문의 답변 작성
	@RequestMapping(value = "/insertAnswer" , method = RequestMethod.POST)
	public String insertAnswer(HttpServletRequest req,Model model, AnswerVO answer, 
			// 알림 보내기
			NotificationVO alarm) throws Exception {
		String goPage = "";
		ServiceResult result = inquiryService.insertAnswer(answer);
		if(result.equals(ServiceResult.OK)) {
			// 게시물 번호
			int boardId = answer.getBoardId();
			
			// 알림 보내기
			// 보내는 사람 (세션)
			HttpSession session = req.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
			String postId = memberVO.getMemId();
			alarm.setPostId(postId);
			// 작성자 id 가져오기 ( 받는 사람)
			String getId = alarmService.boardgetId(boardId);
			alarm.setGetId(getId);
			// 경로 url
			alarm.setNotificationUrl("/member/qna/" + answer.getBoardId());
			// 알림 내용
			alarm.setNotificationContent("문의에 답변을");
			alarmService.insertAlarm(alarm);
			
			goPage = "redirect:/master/inquirydetail?boardId=" + answer.getBoardId();
		}else {
			goPage = "master/inquiryList";
		}
		return goPage;
	}
	
	@RequestMapping(value = "/updateAnswer", method = RequestMethod.POST)
	public String updateAnswer(HttpServletRequest req,Model model, AnswerVO answer, 
			// 알림 보내기
			NotificationVO alarm) throws Exception{
		String goPage = "";
		ServiceResult result = inquiryService.updateAnswer(answer);
		if(result.equals(ServiceResult.OK)) {
			// 게시물 번호
			int boardId = answer.getBoardId();
			
			// 알림 보내기
			// 보내는 사람 (세션)
			HttpSession session = req.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
			String postId = memberVO.getMemId();
			alarm.setPostId(postId);
			// 작성자 id 가져오기 ( 받는 사람)
			String getId = alarmService.boardgetId(boardId);
			alarm.setGetId(getId);
			// 경로 url
			alarm.setNotificationUrl("/master/inquirydetail?boardId=" + answer.getBoardId());
			// 알림 내용
			alarm.setNotificationContent("답변이 수정 되었음을");
			alarmService.insertAlarm(alarm);
			
			goPage = "redirect:/master/inquirydetail?boardId=" + boardId;
		}else {
			goPage = "master/inquiryList";
		}
		return goPage;
	}
	
	// 삭제
	@RequestMapping(value="/deleteAnswer", method = RequestMethod.POST)
	public String deleteAnswer(
			HttpServletRequest req, 
			AnswerVO answer, Model model,NotificationVO alarm) throws Exception {
		String gopage = "";
		int answerId = answer.getAnswerId();
		ServiceResult result = inquiryService.deleteAnswer(answerId);
		if(result.equals(ServiceResult.OK)) {
			
			// 게시물 번호
			int boardId = answer.getBoardId();
			
			// 알림 보내기
			// 보내는 사람 (세션)
			HttpSession session = req.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
			String postId = memberVO.getMemId();
			alarm.setPostId(postId);
			// 작성자 id 가져오기 ( 받는 사람)
			String getId = alarmService.boardgetId(boardId);
			alarm.setGetId(getId);
			// 경로 url
			alarm.setNotificationUrl("/master/inquirydetail?boardId=" + answer.getBoardId());
			// 알림 내용
			alarm.setNotificationContent("답변이 삭제 되었음을");
			alarmService.insertAlarm(alarm);
			
			gopage = "redirect:/master/inquirydetail?boardId=" + boardId;
		}else {
			gopage = "master/inquiryList";
		}
		return gopage;
	}
}
