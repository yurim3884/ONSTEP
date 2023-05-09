package kr.or.ddit.mapper;

import java.util.Map;

import kr.or.ddit.profile.vo.ProfileVO;

public interface ProfileMapper {

	public ProfileVO getProfile(int profileNo);

	public int insertProfile(ProfileVO profile);

	public void updateMemberProfileId(Map<String, String> memProfile);

	public int updateProfile(ProfileVO profile);

}
