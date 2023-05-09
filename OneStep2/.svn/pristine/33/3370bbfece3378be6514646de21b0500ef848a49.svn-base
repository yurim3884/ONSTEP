package kr.or.ddit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.alarm.vo.NotificationVO;
import kr.or.ddit.master.vo.AdvertVO;
import kr.or.ddit.prod.vo.ProdVO;
import kr.or.ddit.vo.PaginationInfoVO;

@Mapper
public interface MasterAdvertMapper {

	List<AdvertVO> advertList();

	List<ProdVO> prodList(PaginationInfoVO<ProdVO> pagingVO);

	int prodListcount(PaginationInfoVO<ProdVO> pagingVO);

	ProdVO selectOne(String prodId);

	int advertUpdate(ProdVO prodVO);

}
