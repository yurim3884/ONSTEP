package kr.or.ddit.alarm.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.alarm.service.IAlarmService;
import kr.or.ddit.alarm.vo.NotificationVO;
import kr.or.ddit.mapper.AlarmMapper;
import kr.or.ddit.vo.PaginationInfoVO;

@Service
public class AlarmServiceImpl implements IAlarmService {

	@Inject
	private AlarmMapper mapper;

	@Override
	public List<NotificationVO> postList(String memId){
		return mapper.postList(memId);
	}

	@Override
	public List<NotificationVO> getList(String memId){
		return mapper.getList(memId);
	}

	@Override
	public NotificationVO count(String memId){
		return mapper.count(memId);
	}

	@Override
	public List<NotificationVO> getListOK(String memId) {
		return mapper.getListOK(memId);
	}

	@Override
	public void change(String memId) {
		mapper.change(memId);
	}

	@Override
	public int getListcount(PaginationInfoVO<NotificationVO> pagingVO1) {
		return mapper.getListcount(pagingVO1);
	}

	@Override
	public List<NotificationVO> getListPage(PaginationInfoVO<NotificationVO> pagingVO1) {
		return mapper.getListPage(pagingVO1);
	}

	@Override
	public int postListcount(PaginationInfoVO<NotificationVO> pagingVO2) {
		return mapper.postListcount(pagingVO2);
	}

	@Override
	public List<NotificationVO> postListPage(PaginationInfoVO<NotificationVO> pagingVO2) {
		return mapper.postListPage(pagingVO2);
	}

	@Override
	public String boardgetId(int boardId) {
		return mapper.boardgetId(boardId);
	}

	@Override
	public void insertAlarm(NotificationVO alarm) {
		mapper.insertAlarm(alarm);
	}


}
