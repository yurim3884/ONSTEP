package kr.or.ddit.vo;


import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class AttVO {
	
	private int attId;
	private String attPath;
	private String attSaveName;
	private String attFileName;
	private String attMime;
	private long attFileSize;
	private String attFancySize;
	private int attDownload;
	private String memId;
	private String companyId;
	private int annoId;
	private int boardId;
	private int manageNum;
	
	private MultipartFile item;
	
	public AttVO() {}
	public AttVO(MultipartFile item) {
		this.item = item;
		attFileName = item.getOriginalFilename();
		attFileSize = item.getSize();
		attMime = item.getContentType();
		attFancySize = FileUtils.byteCountToDisplaySize(attFileSize);
	}
}
