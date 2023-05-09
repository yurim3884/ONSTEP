package kr.or.ddit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.alarm.vo.NotificationVO;
import kr.or.ddit.vo.PaginationInfoVO;

@Mapper
public interface AlarmMapper {

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
