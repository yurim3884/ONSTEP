package kr.or.ddit.myPage.vo;

import lombok.Data;

@Data
public class AwardVO {
	
	/* 수상내역 */
	private int awardId;				// 수상ID
	private String awardName;			// 수상명
	private String awardContent;		// 수상내용
	private String awardInstitution;	// 수상기관
	private String awardDate;			// 수상날짜
	private String awardCategory;		// 수상대회종류
	private int attId;				// 첨부파일ID
	private String awardInsertDate;		// 작성날짜
	private String awardDeleteDate;		// 삭제날짜
	private int resumeId;			// 이력서ID
	
}
