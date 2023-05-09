package kr.or.ddit.master.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.MasterannoMapper;
import kr.or.ddit.master.service.IMasterannoService;
import kr.or.ddit.vo.AnnoVO;

@Service
public class MasterannoServiceImpl implements IMasterannoService {

	@Inject
	private MasterannoMapper mapper;
	
	@Override
	public List<AnnoVO> list() throws Exception {
		return mapper.list();
	}

}
