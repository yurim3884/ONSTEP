package kr.or.ddit.master.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.alarm.vo.NotificationVO;
import kr.or.ddit.master.service.IMasterAdvertService;
import kr.or.ddit.master.vo.AdvertVO;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.prod.vo.ProdVO;
import kr.or.ddit.vo.PaginationInfoVO;

@Controller
@RequestMapping("/master")
public class MasterAdvertController {

	@Inject
	private IMasterAdvertService advertService;
	
	@RequestMapping(value = "/advert", method = RequestMethod.GET)
	public String advert(HttpServletRequest req,Model model,
			@RequestParam(name="page", required = false, defaultValue = "1") int currentPage
			) {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		PaginationInfoVO<ProdVO> pagingVO = new PaginationInfoVO<ProdVO>();
		if(memberVO != null) {
			pagingVO.setMemId(memberVO.getMemId());
			pagingVO.setCurrentPage(currentPage);
			int totalRecord = advertService.prodListcount(pagingVO);
			pagingVO.setTotalRecord(totalRecord);

			List<ProdVO> prodList = advertService.prodList(pagingVO);
			pagingVO.setDataList(prodList);
			
			List<AdvertVO> advertList = advertService.advertList();
			
			model.addAttribute("advertList",advertList);
			model.addAttribute("pagingVO",pagingVO);
			
		}
		return "master/masterAdvert";
	}
	
	@ResponseBody
	@RequestMapping(value = "/advertUpdate", method = RequestMethod.POST)
	public HashMap<String, Object> advertUpdate(Model model, String prodId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		ProdVO prodVO = advertService.selectOne(prodId);
		
		try {
			ServiceResult result = advertService.advertUpdate(prodVO);
			
			if(result.equals(ServiceResult.OK)) {
				map.put("status", "성공");
			}else {
				map.put("status", "실패");
			}
		} catch (Exception e) {
			map.put("status", "에러");
		}
		return map;
	}
}
