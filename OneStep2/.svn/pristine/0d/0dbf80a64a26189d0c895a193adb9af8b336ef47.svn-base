package kr.or.ddit.alarm.service;

import java.util.List;

import kr.or.ddit.alarm.vo.NotificationVO;
import kr.or.ddit.vo.PaginationInfoVO;

public interface IAlarmService {

	List<NotificationVO> postList(String memId);

	List<NotificationVO> getList(String memId);

	NotificationVO count(String memId);

	List<NotificationVO> getListOK(String memId);

	void change(String memId);

	int getListcount(PaginationInfoVO<NotificationVO> pagingVO1);

	List<NotificationVO> getListPage(PaginationInfoVO<NotificationVO> pagingVO1);

	int postListcount(PaginationInfoVO<NotificationVO> pagingVO2);

	List<NotificationVO> postListPage(PaginationInfoVO<NotificationVO> pagingVO2);

	String boardgetId(int boardId);

	void insertAlarm(NotificationVO alarm);




}
