package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.fullcalendar.vo.FullcalendarVO;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.PaginationInfoVO;

public interface Fullcalendarmapper {

	public void insert(FullcalendarVO calendar);
	public List<FullcalendarVO> list(FullcalendarVO fullVO);
	public void update(FullcalendarVO calendar);
	public void del(FullcalendarVO calendar);
	
	//공고 뽑아올것
	public List<AnnoVO> selectfullList(PaginationInfoVO<AnnoVO> pagingVO);
//	public List<AnnoVO> searchList(PaginationInfoVO<AnnoVO> pagingVO);
	public int selectFullCount(PaginationInfoVO<AnnoVO> pagingVO);
	
	
	///회사 공고 뽑기
	public List<AnnoVO> comList(AnnoVO annoVO);
	public void comCalInsert(FullcalendarVO calendar);
	public void comCalUpdate(FullcalendarVO calendar);
	public void comCalDel(FullcalendarVO calendar);

}
