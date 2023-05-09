package kr.or.ddit.myPage.vo;

import lombok.Data;

@Data
public class NotificationVO {
	private int notificationId;			// 알림ID
	private String notificationContent;		// 알림내용
	private String notificationDate;		// 알림일시
	private int notificationRead;		// 알림 읽기 여부
	private int memId;					// 알림받은 회원 ID
	private String notificationUrl;			// 알림 URL
	private int notificationType;			// 알림 구분
	
	
}
