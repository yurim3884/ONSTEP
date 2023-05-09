package kr.or.ddit.fullcalendar.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.fullcalendar.service.IAnnoFullcalendarService;
import kr.or.ddit.fullcalendar.vo.FullcalendarVO;
import kr.or.ddit.mapper.Fullcalendarmapper;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.PaginationInfoVO;

@Service
public class AnnoFullcalendarServiceImpl implements IAnnoFullcalendarService {

	@Inject
	private Fullcalendarmapper mapper;

	@Override
	public List<AnnoVO> selectfullList(PaginationInfoVO<AnnoVO> pagingVO) {
		return mapper.selectfullList(pagingVO);
	}


	@Override
	public int selectFullCount(PaginationInfoVO<AnnoVO> pagingVO) {
		return mapper.selectFullCount(pagingVO);
	}
	

//	@Override
//	public List<AnnoVO> searchList(PaginationInfoVO<AnnoVO> pagingVO) {
//		return mapper.searchList(pagingVO);
//	}

}
