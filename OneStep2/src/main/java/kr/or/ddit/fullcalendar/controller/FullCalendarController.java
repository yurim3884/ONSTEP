package kr.or.ddit.fullcalendar.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.fullcalendar.service.IFullcalendarService;
import kr.or.ddit.fullcalendar.vo.FullcalendarVO;
import kr.or.ddit.master.service.IMasterAdvertService;
import kr.or.ddit.master.vo.AdvertVO;
import kr.or.ddit.member.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage/fullcalendar")
public class FullCalendarController {
	
	@Inject
	private IFullcalendarService fullcalendarService;
	
	@Inject
	private IMasterAdvertService advertService;
	
	public String fullcalendarList() {
		
		return "calendar/fullcalendar";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String calednar(Model model)throws Exception {
		List<AdvertVO> advertList = advertService.advertList();
		model.addAttribute("advertList",advertList);
		return "calendar/fullcalendar";
	}

	@ResponseBody
	@RequestMapping(value="/list", method=RequestMethod.POST)
	public JSONArray calendarList(
			HttpServletRequest req,
			FullcalendarVO fullVO,
			Model model) {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		fullVO.setMemId(memberVO.getMemId());
		
		List<FullcalendarVO> list = fullcalendarService.list(fullVO);
		
		System.out.println("야 왜 아무것도 안뜨는거야?" +list);
		log.info("뭐가떠야해?"+ list);
		model.addAttribute("list",list);
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		
		Map<String, Object> calMap = new HashMap<String, Object>();
		
		for (int i = 0; i < list.size(); i++) {
			calMap.put("no", list.get(i).getCalId());
			calMap.put("title", list.get(i).getCalTitle());
			calMap.put("content", list.get(i).getCalContent());
			calMap.put("start", list.get(i).getCalStart());
			calMap.put("end", list.get(i).getCalEnd());
			calMap.put("memId", list.get(i).getMemId());
			calMap.put("annoId", list.get(i).getAnnoId());
			calMap.put("id", list.get(i).getId());
			calMap.put("className", list.get(i).getLabel());
			
			jsonObj = new JSONObject(calMap);
			jsonArr.add(jsonObj);
		}
		System.out.println("json: {} " + jsonArr);
		return jsonArr;
	}
	

	@RequestMapping(value="/insert", method = RequestMethod.GET)
	public String fullCalendarRegister(FullcalendarVO calendar, Model model) {
		log.info("뜨나여 ? ");
		model.addAttribute("calendar", calendar);
		return "calendar/register";
	}
	
	@ResponseBody
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String fullCalendarInsert(
//			@Validated FullcalendarVO calendar
			@RequestBody FullcalendarVO calendar
			, BindingResult result
			, HttpServletRequest req
			, Model model) {

		log.info("아이디 값이 오는가?: "  );
		log.info("calendar()>>>" + calendar);
		log.info("title>>>"+ calendar.getCalTitle());
		log.info("날짜>>>>>>> :  " + calendar.getCalStart()) ;
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		calendar.setMemId(memberVO.getMemId());
		fullcalendarService.insert(calendar);
		log.info("LABEL이 들어갔다가 나오냐?  : " + calendar);
		if(calendar.getCalId()>0) {
			return "redirect:/fullcalendar/list";
		}
		model.addAttribute("msg","등록성공");
		return "calednar";
	}
	
	@ResponseBody
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(
			@RequestBody FullcalendarVO calendar
			, HttpServletRequest req
			, Model model) {
		
		log.info("update()");
		log.info("데이터가 들어오는가?" + calendar);
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		calendar.setMemId(memberVO.getMemId());
		
		fullcalendarService.update(calendar);
		model.addAttribute("calendar",calendar);
		log.info("아이디가 왜 안들어오냐? " + calendar.getCalId());
		log.info("memId는? " + calendar.getMemId());
		return "calendar";
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/del", method=RequestMethod.POST)
	public String remove(FullcalendarVO calendar, Model model) {
		log.info("remove()");
		log.info("야야야야야야 삭제되냐!!! " + calendar);
		
		fullcalendarService.del(calendar);
		model.addAttribute("msg", "삭제완료");
		return "calendar";
				
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
