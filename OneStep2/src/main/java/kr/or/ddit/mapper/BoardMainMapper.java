package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.board.vo.BoardVO;

public interface BoardMainMapper {

	public List<BoardVO> selectBoardMainList();

	//마이페이지 리스트 출력
	public List<BoardVO> myBoardList(String memId);

}
