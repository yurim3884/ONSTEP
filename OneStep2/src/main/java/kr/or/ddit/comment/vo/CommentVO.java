package kr.or.ddit.comment.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CommentVO {
	private int commId;
	private String commMem;
	private String refComm;
	private String commContent;
	private Date commStart;
	private Date commCorr;
	private int commWarn;
	private int commGood;
	private int boardId;
	
	
//	private int commId;		//댓글 번호  --- 기본키 
//	private int boardId;	//게시글 번호
//	private int grp;		// 댓글이 속한 게시글 번호(받아와야 하는 값)
//	private int grps;		// 같은 grp중에 순서 ----> 이게 뭘 말하는거지 ... ? 
//	private int grpl;		// 댓글의 깊이 -> 모댓글이면 0, 답글이면 1 
//	private String commMem;	// 댓글 작성자 (작성자 nick) -- 외래키 
//	private String commContent; //댓글 내용
//	private Date commStart;	// 댓글 작성 시간
}
