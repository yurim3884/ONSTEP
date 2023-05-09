package kr.or.ddit.comment.service;

import java.util.List;

import kr.or.ddit.comment.vo.CommentVO;

public interface ICommentService {

	public void insertComment(CommentVO commVO);
//인서트?
//	public int insertComment(int parseInt);
	public List<CommentVO> commentList(int boardId);
//	public List<CommentVO> commentList(int boardId);
	//수정
	public void modifyComment(CommentVO commentVO);
	//제거
	public int commDelete(int commId);

}
