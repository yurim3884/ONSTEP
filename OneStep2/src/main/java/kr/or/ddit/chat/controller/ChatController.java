package kr.or.ddit.chat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.chat.service.IChatService;
import kr.or.ddit.chat.vo.ChatVO;
import kr.or.ddit.chat.vo.ChatroomVO;
import kr.or.ddit.member.service.IMemService;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.profile.service.IProfileService;
import kr.or.ddit.profile.vo.ProfileVO;
//import kr.or.ddit.study.vo.StudyVO;
//import kr.or.ddit.user.vo.EmployeeVO;
//import kr.or.ddit.user.vo.ProfessorVO;
//import kr.or.ddit.user.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/chat")
public class ChatController {
	
	@Autowired
	private IChatService chatService;
	
	@Autowired
	private IMemService memService;

	@Autowired
	private IProfileService profileService;
	
	@RequestMapping(value="/main")
	public String chatMain(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO) session.getAttribute("memberVO");
		String goPage = "";
		if (member != null) {
			goPage = "chat/chat";
			String memId = member.getMemId();
			log.info("memId >> ", memId);
			model.addAttribute("member", member);
			model.addAttribute("memId", memId);
		} else {
			goPage = "redirect:/member/login";
		}
		return goPage;
	}
	
	@ResponseBody
	@PostMapping("/detail")
	public List<ChatVO> chatDetail(@RequestParam Map<String,Object> param) {
		List<ChatVO> chatDetail = chatService.chatDetail(param); // 채팅 내용을 조회
		return chatDetail;
	}


//	@ResponseBody
//	@PostMapping("/list")
//	public List<ChatroomVO> chatList(@RequestParam Map<String,Object> param, HttpSession session) {
//		
//		String memId = (String) param.get("memId");
//		List<ChatroomVO> chatList = chatService.selectMyChatrooms(memId);
//		
//		return chatList;
//	}
	
	@ResponseBody
	@PostMapping("/list")
	public List<MemberVO> chatList(@RequestParam Map<String,Object> param, HttpSession session) {
//	public List<Map<String, Object>> chatList(@RequestParam Map<String,Object> param, HttpSession session) {
		
//		String memId = (String) param.get("memId");
//		String memStatus = (String) param.get("memStatus");
		List<MemberVO> chatList = chatService.selectChatList(param);
		
		return chatList;
	}
	
	@ResponseBody
	@RequestMapping(value="/chatMember",method=RequestMethod.POST)
	public List<MemberVO> chatMember(@RequestParam Map<String, String> param){
		
		List<MemberVO> chatMemberList =  chatService.chatMember(param);
		return chatMemberList;
	}
	
	@ResponseBody
	@RequestMapping(value="/chatting", method=RequestMethod.POST)
	public String insertChat(@RequestParam Map<String, String> param){
		chatService.insertChat(param); // 채팅 내용을 저장
		return "ok"; // 성공적으로 처리되면 "ok" 문자열을 반환
	}
	
	
	@ResponseBody
	@RequestMapping(value="/chatMemProfile",method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> chatMemProfile(@RequestParam Map<String,String> paramMap, HttpSession session) throws Exception {
		
//		String memStatus = paramMap.get("memStatus"); // 요청 파라미터에서 userType 값을 가져온다.
		String memId = paramMap.get("memId"); // 요청 파라미터에서 userId 값을 가져온다.
		Map<String, Object> map = new HashMap<>(); // 결과 데이터를 담을 Map 객체를 생성
		
		MemberVO memberVO = memService.memCheck(memId);
		int profileId = memberVO.getProfileId();
		ProfileVO profile = profileService.getProfile(profileId);
		map.put("profile", profile);
		
//		if (memStatus.equals("1")) {
//			MemberVO memberVO = memService.memCheck(memId);
//			int profileId = memberVO.getProfileId();
//			ProfileVO profile = profileService.getProfile(profileId);
//			map.put("profile",  profile);
//		}
//		
//		if (memStatus.equals("2")) {
//			MemberVO memberVO = memService.memCheck(memId);
//			int profileId = memberVO.getProfileId();
//			ProfileVO profile = profileService.getProfile(profileId);
//			map.put("profile",  profile);
//		}
//		
//		if (memStatus.equals("3")) {
//			MemberVO memberVO = memService.memCheck(memId);
//			int profileId = memberVO.getProfileId();
//			ProfileVO profile = profileService.getProfile(profileId);
//			map.put("profile",  profile);
//		}
		
		HttpHeaders headers = new HttpHeaders(); // HTTP 응답 헤더를 생성한다.
	    return new ResponseEntity<Map<String, Object>>(map, headers, HttpStatus.OK); // map과 헤더를 담은 ResponseEntity 객체를 반환한다.
	}
	
	
}
