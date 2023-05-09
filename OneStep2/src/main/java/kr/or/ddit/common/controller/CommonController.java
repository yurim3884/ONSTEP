package kr.or.ddit.common.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.company.service.ICompanyService;
import kr.or.ddit.vo.AnnoVO;

@Controller
@RequestMapping("/common")
public class CommonController {


	@RequestMapping(value="/main", method = RequestMethod.GET)
	public String main(Model model) {
		return "common/main";
	}


}
