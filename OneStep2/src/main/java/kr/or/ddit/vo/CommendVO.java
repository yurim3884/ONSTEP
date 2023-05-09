package kr.or.ddit.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CommendVO {

	String commendId;
	int resumeId;
	String memId;
	int annoId;
	Date commendDate;
}
