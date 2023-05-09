package kr.or.ddit.master.service;

import java.util.List;

import kr.or.ddit.prod.vo.ProdVO;

public interface IPaymentService {

	List<ProdVO> prodList() throws Exception;

	List<ProdVO> prodYear(String year) throws Exception;

}
