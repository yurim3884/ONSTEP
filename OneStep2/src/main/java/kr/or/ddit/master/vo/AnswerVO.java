package kr.or.ddit.master.vo;

import java.util.Date;

import lombok.Data;

@Data
public class AnswerVO {

	private int answerId;         // 문의답변id
	private int boardId;          // 게시판id 외래키
	private String answerTitle;   // 제목
	private String answerContent; // 내용
	private Date answerStart;     // 작성일
	private Date answerCorr;      // 수정일
	
}
