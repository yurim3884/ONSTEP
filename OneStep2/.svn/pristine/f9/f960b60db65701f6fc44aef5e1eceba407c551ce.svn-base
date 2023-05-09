package kr.or.ddit.master.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.PaymentMapper;
import kr.or.ddit.master.service.IPaymentService;
import kr.or.ddit.prod.vo.ProdVO;

@Service
public class PaymentServiceImpl implements IPaymentService {

	@Inject
	private PaymentMapper mapper;

	@Override
	public List<ProdVO> prodList() throws Exception {
		return mapper.prodList();
	}

	@Override
	public List<ProdVO> prodYear(String year) throws Exception {
		return mapper.prodYear(year);
	}
}
