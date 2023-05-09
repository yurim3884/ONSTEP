package kr.or.ddit.profile.serviceImpl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.ProfileMapper;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.profile.service.IProfileService;
import kr.or.ddit.profile.vo.ProfileVO;

@Service
public class ProfileServiceImpl implements IProfileService{

	@Autowired
	private ProfileMapper profileMapper;
   
	// 프로필 추가 메서드
	@Override
	public void insertProfile(ProfileVO profile, HttpSession session) {
		
		// 프로필 매퍼를 통해 프로필을 추가하고, 반환된 결과값을 변수에 저장
    	int icnt = profileMapper.insertProfile(profile);
    	
    	// 세션에서 현재 로그인한 회원 정보를 가져옴
    	MemberVO member = (MemberVO) session.getAttribute("memberVO");
    	
    	// 회원의 프로필 정보를 담을 맵 객체 생성
    	Map<String, String> memProfile = new HashMap<String, String>();
    	
    	// 프로필이 성공적으로 추가되었을 경우에만 회원의 프로필 정보를 업데이트함
    	if (icnt  > 0) {
    		memProfile.put("memId", member.getMemId());
    		memProfile.put("memStatus", member.getMemStatus());
    		memProfile.put("profileId",  "" + profile.getProfileId());
    		profileMapper.updateMemberProfileId(memProfile);
    	}
    }
	
	// 프로필 업데이트 메서드
	@Override
	public void updateProfile(ProfileVO profile, HttpSession session) {
		
		// 프로필 매퍼를 통해 프로필을 업데이트하고, 반환된 결과값을 변수에 저장
		int icnt = profileMapper.updateProfile(profile);
		
		// 세션에서 현재 로그인한 회원 정보를 가져옴
		MemberVO member = (MemberVO) session.getAttribute("memberVO");
		
		// 회원의 프로필 정보를 담을 맵 객체 생성
		Map<String, String> memProfile = new HashMap<String, String>();
		
		// 프로필이 성공적으로 업데이트되었을 경우에만 회원의 프로필 정보를 업데이트함
		if (icnt > 0) {
			memProfile.put("memId", member.getMemId());
			memProfile.put("memStatus", member.getMemStatus());
			memProfile.put("profileId",  "" + profile.getProfileId());
			profileMapper.updateMemberProfileId(memProfile);
		}
	}
	
	// 프로필 조회 메서드
	@Override
	public ProfileVO getProfile(int profileId) {
		
		// 프로필 매퍼를 통해 프로필 정보를 조회함
    	return profileMapper.getProfile(profileId);
	}

}