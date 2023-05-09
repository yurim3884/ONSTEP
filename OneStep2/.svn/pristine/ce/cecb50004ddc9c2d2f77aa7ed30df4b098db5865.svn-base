package kr.or.ddit.master.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.alarm.vo.NotificationVO;
import kr.or.ddit.mapper.MasterAdvertMapper;
import kr.or.ddit.master.service.IMasterAdvertService;
import kr.or.ddit.master.vo.AdvertVO;
import kr.or.ddit.prod.vo.ProdVO;
import kr.or.ddit.vo.PaginationInfoVO;

@Service
public class MasterAdvertServiceImpl implements IMasterAdvertService {

	@Inject
	private MasterAdvertMapper mapper;

	@Override
	public List<AdvertVO> advertList() {
		return mapper.advertList();
	}


	@Override
	public int prodListcount(PaginationInfoVO<ProdVO> pagingVO) {
		return mapper.prodListcount(pagingVO);
	}

	@Override
	public List<ProdVO> prodList(PaginationInfoVO<ProdVO> pagingVO) {
		return mapper.prodList(pagingVO);
	}


	@Override
	public ProdVO selectOne(String prodId) {
		return mapper.selectOne(prodId);
	}


	@Override
	public ServiceResult advertUpdate(ProdVO prodVO) {
		ServiceResult result = null;
		int cnt = mapper.advertUpdate(prodVO);
		if(cnt > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}
}
