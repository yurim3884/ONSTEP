package kr.or.ddit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.board.vo.BoardVO;

@Mapper
public interface ManoMapper {
	List<BoardVO> list() throws Exception;

	int insert(BoardVO boardVO) throws Exception;

	BoardVO detail(int boardId) throws Exception;

	int update(BoardVO boardVO) throws Exception;

	int delete(int boardId) throws Exception;
}
