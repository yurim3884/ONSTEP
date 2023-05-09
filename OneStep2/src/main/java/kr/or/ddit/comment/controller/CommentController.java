package kr.or.ddit.comment.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javassist.NotFoundException;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.comment.service.ICommentService;
import kr.or.ddit.comment.vo.CommentVO;
import kr.or.ddit.member.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/comment")
public class CommentController {

	@Inject
	private ICommentService commentService;
	
	
	@RequestMapping(value="/insert", method = RequestMethod.POST,  produces = "text/plain")
	public void commentInsert(
			@RequestBody CommentVO commVO
			, HttpServletRequest req
			, Model model) {
		HttpSession session = req.getSession();
		MemberVO memberVO =(MemberVO) session.getAttribute("memberVO");
		commVO.setCommMem(memberVO.getMemId());
		log.debug("memId>>>>>", commVO.getCommContent());
		model.addAttribute("commVO",commVO);
		commentService.insertComment(commVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public Model commentList(Model model, @RequestBody int boardId) {
		List<CommentVO> list = commentService.commentList(boardId);
		model.addAttribute("list",list);
		log.info("나오냐?",list);
		return model;
	}
	
	
	public Map<String, Object> modifyComment(CommentVO commentVO) throws NotFoundException {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			commentService.modifyComment(commentVO);
			map.put("result", true);
			map.put("msg", "수정성공");
		} catch (Exception e) {
			map.put("result", false);
			map.put("msg", "댓글을 쓴 회원이 아닙니다.");
		}
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public int CommentDelete(@RequestBody Map<String,String> myMap) {
//		CommentVO commentVO = new CommentVO();
		log.info("여기서 뭐 : " + myMap.get("commId"));
		return  commentService.commDelete(Integer.parseInt(myMap.get("commId")));		
	}
	
	
	
	
//	// 모댓글 작성
//	@ResponseBody
//	@RequestMapping(value = "/picture_write_reply.do")
//	public BoardVO write_reply(@RequestParam int commId, @RequestParam String commContent, HttpSession session) {
//
//		CommentVO to = new CommentVO();
//
//	    // 게시물 번호 세팅
//	    to.setBoardId(commId);
//
//	    // 댓글 내용 세팅
//	    to.setCommContent(commContent);
//
//	    // 댓글작성자 nick을 writer로 세팅
//	    to.setCommMem((String) session.getAttribute("memberVO"));
//
//	    // +1된 댓글 갯수를 담아오기 위함
//	    BoardVO boardVO = boardService.boardWriteComment(to);
//
//	    return boardVO;
//	}
//
//	// 답글 작성
//	@ResponseBody
//	@RequestMapping(value = "/picture_write_rereply.do")
//	public BoardVO write_rereply(@RequestParam int commId, @RequestParam String bno, @RequestParam String commContent,
//	        HttpSession session) {
//
//	    CommentVO to = new CommentVO();
//
//	    // 게시물 번호 세팅
//	    to.setBoardId(commId);
//
//	    // grp, grps, grpl 은 CommentVO에 int로 정의되어 있기 때문에 String인 no를 int로 변환해서 넣어준다.
//	    // 모댓글 번호 no를 grp으로 세팅한다.
//	    to.setGrp(commId);
//
//	    // 답글은 깊이가 1이되어야 하므로 grpl을 1로 세팅한다.
//	    to.setGrpl(1);
//
//	    // 답글 내용 세팅
//	    to.setCommContent(commContent);
//
//	    // 답글작성자 nick을 writer로 세팅
//	    to.setCommMem((String) session.getAttribute("memberVO"));
//
//	    // +1된 댓글 갯수를 담아오기 위함
//	    BoardVO boardVO = boardService.boardWriteReComment(to);
//
//	    return boardVO;
//	}
//
//	// 댓글 리스트
//	@ResponseBody
//	@RequestMapping(value = "/picture_replyList.do")
//	public List<CommentVO> reply_list(@RequestParam int commId, HttpSession session) {
//
//	    CommentVO to = new CommentVO();
//
//	    // 가져올 댓글 리스트의 게시물번호를 세팅
//	    to.setBoardId(commId);
//
//	    List<CommentVO> replyList = new ArrayList<CommentVO>();
//
//	    replyList = boardService.commentList(to);
//
//	    return replyList;
//	}
//
//	// 모댓글 삭제
//	@ResponseBody
//	@RequestMapping(value = "/picture_delete_reply.do")
//	public BoardVO picture_delete_reply(@RequestParam int commId, @RequestParam int boardId ) {
//
//	    CommentVO to = new CommentVO();
//
//	    // 모댓글 번호 세팅
//	    to.setCommId(commId);
//
//	    // 게시물 번호 세팅
//	    to.setBoardId(boardId);
//
//	    // 갱신된 댓글 갯수를 담아오기 위함
//	    BoardVO boardVO = boardService.boardDeleteComment(to);
//
//	    return boardVO;
//	}
//
//	// 답글 삭제
//	@ResponseBody
//	@RequestMapping(value = "/picture_delete_rereply.do")
//	public BoardVO delete_rereply(@RequestParam int commId, @RequestParam int boardId, @RequestParam int grp) {
//
//	    CommentVO to = new CommentVO();
//
//	    // 답글 번호 세팅 - 답글 삭제하기 위해서 필요함
//	    to.setCommId(commId);
//
//	    // 게시물 번호 세팅 - p_board 의 reply+1하기 위해 필요함
//	    to.setBoardId(boardId);
//
//	    // grp 세팅(모댓글이 뭔지) - 모댓글은 삭제를 해도 답글이 있으면 남아있게 되는데 답글이 모두 삭제되었을 때 모댓글도 삭제하기 위해
//	    // 필요함
//	    to.setGrp(grp);
//
//	    // 갱신된 댓글 갯수를 담아오기 위함
//	    BoardVO boardVO = boardService.boardDeleteReComment(to);
//
//	    return boardVO;
//	}		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}



























