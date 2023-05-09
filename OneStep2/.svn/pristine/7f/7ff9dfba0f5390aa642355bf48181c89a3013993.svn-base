package kr.or.ddit.master.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.master.service.IMasterannoService;
import kr.or.ddit.vo.AnnoVO;

@Controller
@RequestMapping("/master")
public class MasterannoController {

	@Inject
	private IMasterannoService annoService;
	
	@RequestMapping(value = "/anno", method = RequestMethod.GET)
	public String masterAnno(Model model) throws Exception {
		List<AnnoVO> annoVO = annoService.list();
		model.addAttribute("list",annoVO);
		return "master/masterAnno";
	}
}
