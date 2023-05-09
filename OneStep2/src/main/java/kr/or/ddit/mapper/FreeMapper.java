package kr.or.ddit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.freelancer.vo.FreeVO;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.AttVO;
import kr.or.ddit.vo.FaqVO;

@Mapper
public interface FreeMapper {

	void insertFree(FreeVO free);

	List<FreeVO> freeList();

	void insertProject(AnnoVO anno);

	List<AnnoVO> projList();

	void insertAnnoFile(AnnoVO anno);

	AnnoVO projDetail(int annoId);

	FreeVO freeDetail(int freeNum);

	List<BoardVO> inquirylist(String memId);

	BoardVO inquiry(int boardId);

	int insertInqu(BoardVO board);

	void insertBoardFile(AttVO attVO);

	int updateBoard(BoardVO boardVO);

	List<AttVO> selectBoardFile(Integer integer);

	void deleteBoardFile(Integer integer);

	void deleteBoardFileByBoardId(int boardId);

	int deleteBoard(int boardId);

	void delete(int boardId);

	List<FaqVO> selectFaq();

	MemberVO member(String memId);

	void updateMemFree(FreeVO free);

}
