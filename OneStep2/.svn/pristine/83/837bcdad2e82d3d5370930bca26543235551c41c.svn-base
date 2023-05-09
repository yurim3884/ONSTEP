package kr.or.ddit.chat.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.chat.service.IChatService;
import kr.or.ddit.chat.vo.ChatVO;
import kr.or.ddit.chat.vo.ChatroomVO;
import kr.or.ddit.mapper.ChatMapper;
import kr.or.ddit.member.vo.MemberVO;

@Service
public class ChatServiceImpl implements IChatService{

	@Autowired
	private ChatMapper chatMapper;
	
	@Override
	public void insertChat(Map<String, String> param) {
		chatMapper.insertChat(param);
		
	}

	@Override
	public List<ChatVO> chatDetail(Map<String,Object> paramMap) {
		return chatMapper.chatDetail(paramMap);
	}

	@Override
	public List<MemberVO> chatMember(Map<String, String> param) {
		return chatMapper.chatMember(param);
	}

	@Override
	public List<MemberVO> selectChatList(Map<String, Object> param) {
		return chatMapper.selectChatList(param);
	}


}
