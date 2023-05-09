package kr.or.ddit.master.service;

import java.util.List;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.master.vo.AnswerVO;

public interface IinquiryService {

	List<BoardVO> inquirylist() throws Exception;

	BoardVO inquiryDetail(int boardId) throws Exception;

	AnswerVO answerSelect(int boardId) throws Exception;

	ServiceResult insertAnswer(AnswerVO answer) throws Exception;

	List<AnswerVO> answerList() throws Exception;

	AnswerVO answerDetail(int answerId) throws Exception;

	ServiceResult updateAnswer(AnswerVO answer) throws Exception;

	ServiceResult deleteAnswer(int answerId) throws Exception;

}
