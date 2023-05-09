package kr.or.ddit.myPage.vo;

import lombok.Data;

@Data
public class WorkfieldVO {

	/* 희망직무 */
	private int workfieldId;					// 희망직무ID
	private String workfield1;					// 직무 대분류
	private String workfield2;					// 직무 소분류
	private String workfieldInsertDate;			// 작성날짜
	private String workfieldDeleteDate;			// 삭제날짜
	private int resumeId;					// 이력서번호
	
}
