package kr.or.ddit.fullcalendar.service;

import java.util.List;

import kr.or.ddit.fullcalendar.vo.FullcalendarVO;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.PaginationInfoVO;

public interface IAnnoFullcalendarService {

	public List<AnnoVO> selectfullList(PaginationInfoVO<AnnoVO> pagingVO);
// 검색을 위한 메소드
//	public List<AnnoVO> searchList(PaginationInfoVO<AnnoVO> pagingVO);

	public int selectFullCount(PaginationInfoVO<AnnoVO> pagingVO);

}
