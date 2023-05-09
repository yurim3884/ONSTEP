package kr.or.ddit.fullcalendar.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.fullcalendar.service.IFullcalendarService;
import kr.or.ddit.fullcalendar.vo.FullcalendarVO;
import kr.or.ddit.mapper.Fullcalendarmapper;

@Service
public class FullcalendarServiceImpl implements IFullcalendarService {

	@Inject
	private Fullcalendarmapper mapper;
	
	@Override
	public void insert(FullcalendarVO calendar) {
		mapper.insert(calendar);
	}

//	@Override
//	public List<FullcalendarVO> list() {
//		return mapper.list();
//	}

	@Override
	public void update(FullcalendarVO calendar) {
		mapper.update(calendar);
	}


	@Override
	public void del(FullcalendarVO calendar) {
		mapper.del(calendar);
	}

	@Override
	public List<FullcalendarVO> list(FullcalendarVO fullVO) {
		return mapper.list(fullVO);
	}

}
