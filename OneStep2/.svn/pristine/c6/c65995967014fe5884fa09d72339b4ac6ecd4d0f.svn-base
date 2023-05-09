package kr.or.ddit.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.json.simple.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.board.service.IGoodService;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.vo.GoodVO;
import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.GetCreator;

@Slf4j
@RequestMapping("/good")
@Controller
public class GoodController {
	@Inject
	private IGoodService goodService;
	
	

//	@ResponseBody
//	@RequestMapping(value="/insert", method=RequestMethod.POST)
//	public ResponseEntity<String> boardLike(@RequestBody GoodVO goodVO){
//		log.info("값이 오냐? :" + goodVO);
//		goodService.insertGood(goodVO);
//		
//		return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
//		
//	}
	
//	@PostMapping(value="/insert",produces = "application/json;charset=utf-8")
	
	@ResponseBody
	@PostMapping(value = "/insert",produces = "application/json;charset=utf-8")
	public String likeup( Model model, @RequestBody GoodVO goodVO) {
		
		System.out.println("인서트 :"+goodVO);
		goodService.insertGood(goodVO);
		
		return "SUCCESS";
	}
	
	@ResponseBody
	@PostMapping(value="/likeDown",produces="application/json; charset=utf-8")
	public void likeDown(@RequestBody GoodVO goodVO) {
		System.out.println("딜리트 :"+goodVO);
		
		goodService.likeDown(goodVO);
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}














































































