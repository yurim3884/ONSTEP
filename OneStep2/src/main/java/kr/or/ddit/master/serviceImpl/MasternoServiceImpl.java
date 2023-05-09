package kr.or.ddit.master.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.mapper.ManoMapper;
import kr.or.ddit.master.service.IMasternoService;

@Service
public class MasternoServiceImpl implements IMasternoService {

	@Inject
	private ManoMapper mapper;
	
	@Override
	public List<BoardVO> list() throws Exception {
		return mapper.list();
	}

	@Override
	public ServiceResult insert(BoardVO boardVO) throws Exception {
		ServiceResult result = null;
		int status = mapper.insert(boardVO);
		if(status > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public BoardVO detail(int boardId) throws Exception {
		return mapper.detail(boardId);
	}

	@Override
	public ServiceResult update(BoardVO boardVO) throws Exception {
		ServiceResult result = null;
		int status = mapper.update(boardVO);
		if(status > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public ServiceResult delete(int boardId) throws Exception {
		ServiceResult result = null;
		int status = mapper.delete(boardId);
		if(status > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	
}
