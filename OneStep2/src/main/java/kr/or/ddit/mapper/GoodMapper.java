package kr.or.ddit.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.vo.GoodVO;

public interface GoodMapper {
//	public void insert(GoodVO goodVO);
	public void likeDown(GoodVO goodVO);
	public GoodVO findLike(@Param("boardId") int boardId,@Param("memId") String memId);
	public ServiceResult likeUp(@Param("memId") String memId,@Param("boardId") int boardId);
	public List<GoodVO> goodList(GoodVO goodVO);
	public void insertGood(GoodVO goodVO);


}
