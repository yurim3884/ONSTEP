package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.master.vo.AnswerVO;

public interface InquiryMapper {

	List<BoardVO> inquirylist() throws Exception;

	BoardVO inquiryDetail(int boardId) throws Exception;

	AnswerVO answerSelect(int boardId) throws Exception;

	int insertAnswer(AnswerVO answer) throws Exception;

	List<AnswerVO> answerList() throws Exception;

	AnswerVO answerDetail(int answerId) throws Exception;

	int updateAnswer(AnswerVO answer) throws Exception;

	int deleteAnswer(int answerId) throws Exception;

}
