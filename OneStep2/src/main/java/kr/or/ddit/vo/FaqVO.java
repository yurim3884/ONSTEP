package kr.or.ddit.vo;

import lombok.Data;

@Data
public class FaqVO {
	
	private int faqId;
	private String faqTitle;
	private String faqContent;
	private int faqStatus;

}
