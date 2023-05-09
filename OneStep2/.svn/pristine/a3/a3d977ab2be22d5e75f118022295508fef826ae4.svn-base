package kr.or.ddit.member.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.SupportVO;
import kr.or.ddit.myPage.vo.CoverletterItemVO;
import kr.or.ddit.myPage.vo.CoverletterVO;
import kr.or.ddit.myPage.vo.ResumeVO;
import kr.or.ddit.vo.ApplyVO;
import kr.or.ddit.myPage.vo.ResumeVO;

public interface IMemService {

	int join(MemberVO vo);

	int companyJoin(MemberVO vo);

	MemberVO memCheck(String memId);

	MemberVO idForget(MemberVO vo);

	MemberVO pwForget(MemberVO vo);

	void changePw(MemberVO vo2);

	void changeInfo(MemberVO vo);

	void insertSupport(SupportVO supVO);

	void delSupport(SupportVO supVO);

	List<SupportVO> getSupportList(String memId);

	List<ResumeVO> selectResume(String memId);

	List<CoverletterVO> selectCoverletter(String memId);

	void insertApply(ApplyVO applyVO);

	List<ResumeVO> matchingResumeList(Map<String, Object> map);

	int cntApply(String memId);

	int cntPropo(String memId);

	int cntResume(String memId);

	List<CompanyVO> getSupportComList(String memId);

//	MemberVO checkPw(String memId);

}
