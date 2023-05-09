package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.freelancer.vo.FreeVO;
import kr.or.ddit.manager.vo.ManageVO;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.myPage.vo.ResumeVO;
import kr.or.ddit.prod.vo.ProdVO;
import kr.or.ddit.vo.AttVO;
import kr.or.ddit.vo.CommendVO;

public interface ManagerMapper {
	
	void insertResume(CommendVO commendVO);

	List<ProdVO> prodFree();

	List<ProdVO> prodProj();

	ResumeVO detail(String memId);

	List<FreeVO> freedetail(String memId);

	List<ManageVO> managerList(String memId);

	AttVO manageDownload(int attId);

	void incrementManageDowncount(int attId);

	int insertManage(ManageVO manageVO);

	void insertManageFile(AttVO attVO);

	MemberVO memberdetail(String memId);
	
}
