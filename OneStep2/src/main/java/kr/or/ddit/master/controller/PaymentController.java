package kr.or.ddit.master.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.master.service.IPaymentService;
import kr.or.ddit.prod.vo.ProdVO;


@Controller
@RequestMapping("/master")
public class PaymentController {

	@Inject
	private IPaymentService payService;
	
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String paymentList(Model model) throws Exception {
		List<ProdVO> prodList = payService.prodList();
		model.addAttribute("prodList",prodList);
		return "master/masterPayment";
	}
	
	/**
	 * ajax POST 요청하여, 해당년도 통계 조회
	 * @param model
	 * @param year
	 * @return HasHMap <String,Object> 
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/prodyear", method = RequestMethod.POST)	
	public HashMap<String , Object> prodYear(String year) throws Exception {
		List<ProdVO> prodYear = payService.prodYear(year);

		HashMap<String , Object> map = new HashMap<String , Object>();
		map.put("prodYear", prodYear);
		return map;
	}
	
}
