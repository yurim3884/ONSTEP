package kr.or.ddit.chatBot.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class ChatbotController {

	@RequestMapping(value="/chatbot", method=RequestMethod.GET)
	public String chatBot( ) {
		return "/chatbot/chatbot";
	}
	
}
