package kr.or.ddit.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.vo.GoodVO;

public interface IGoodService {

//	public void insertGood(GoodVO goodVO);
	public void likeDown(GoodVO goodVO);
//	public GoodVO findLike(int boardId, String memId);
	public ServiceResult likeUp(String memId, int boardId);
	public List<GoodVO> goodList(GoodVO goodVO);
	public void insertGood(GoodVO goodVO);
	

	

}
