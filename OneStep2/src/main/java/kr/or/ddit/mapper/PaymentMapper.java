package kr.or.ddit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.prod.vo.ProdVO;

public interface PaymentMapper {

	List<ProdVO> prodList() throws Exception;

	List<ProdVO> prodYear(@Param("year") String year) throws Exception;

}
