package kr.or.ddit.vo;

public class MailVO {
	private String subject;
	private String message;
	private String to;
	private String from;
	private String joinNum;
	
	
	public String getJoinNum() {
		return joinNum;
	}
	public void setJoinNum(String joinNum) {
		this.joinNum = joinNum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((joinNum == null) ? 0 : joinNum.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MailVO other = (MailVO) obj;
		if (joinNum == null) {
			if (other.joinNum != null)
				return false;
		} else if (!joinNum.equals(other.joinNum))
			return false;
		return true;
	}
	
	
}
