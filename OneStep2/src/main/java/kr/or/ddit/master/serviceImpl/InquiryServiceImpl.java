package kr.or.ddit.master.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.mapper.InquiryMapper;
import kr.or.ddit.master.service.IinquiryService;
import kr.or.ddit.master.vo.AnswerVO;

@Service
public class InquiryServiceImpl implements IinquiryService {

	@Inject
	private InquiryMapper mapper;
	
	@Override
	public List<BoardVO> inquirylist() throws Exception {
		return mapper.inquirylist();
	}

	@Override
	public BoardVO inquiryDetail(int boardId) throws Exception {
		return mapper.inquiryDetail(boardId);
	}

	@Override
	public AnswerVO answerSelect(int boardId) throws Exception {
		return mapper.answerSelect(boardId);
	}

	@Override
	public ServiceResult insertAnswer(AnswerVO answer) throws Exception {
		ServiceResult result = null;
		int status = mapper.insertAnswer(answer);
		if(status > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public List<AnswerVO> answerList() throws Exception {
		return mapper.answerList();
	}

	@Override
	public AnswerVO answerDetail(int answerId) throws Exception {
		return mapper.answerDetail(answerId);
	}

	@Override
	public ServiceResult updateAnswer(AnswerVO answer) throws Exception {
		ServiceResult result = null;
		int status = mapper.updateAnswer(answer);
		if(status > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public ServiceResult deleteAnswer(int answerId) throws Exception {
		ServiceResult result = null;
		int status = mapper.deleteAnswer(answerId);
		if(status > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAILED;
		}
		return result;
	}
}
