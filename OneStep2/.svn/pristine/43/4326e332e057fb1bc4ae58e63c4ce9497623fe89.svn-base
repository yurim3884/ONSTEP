package kr.or.ddit.pay.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.pay.service.IPayService;
import kr.or.ddit.pay.vo.PayVO;
import kr.or.ddit.prod.vo.ProdVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member")
public class payController {
	
	@Inject
	private IPayService service;
	
	@GetMapping("/pay")
	public String pay(HttpServletRequest req,Model model) throws ParseException {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		model.addAttribute("member",memberVO);
		Date now = new Date();
		model.addAttribute("now", now);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
		Calendar rightNow = Calendar.getInstance(); 
		rightNow.add(Calendar.MONTH, 1);
		System.out.println("dfdddd"+rightNow);
		String strNowDate = simpleDateFormat.format(rightNow.getTime()); 
		Date date = simpleDateFormat.parse(strNowDate);
		System.out.println("strNowDate"+strNowDate);
		model.addAttribute("now30",date);
		return "member/pay";
	}

	@RequestMapping(value = "/payss", method = RequestMethod.POST)
	public String crudRegisterForm(HttpServletRequest req,ProdVO pay, Model model) throws Exception {
		log.info("crudRegisterForm()");
		System.out.println(pay);
		service.insertCom(req,pay);
		return "redirect:/member/pay";
	}
}
