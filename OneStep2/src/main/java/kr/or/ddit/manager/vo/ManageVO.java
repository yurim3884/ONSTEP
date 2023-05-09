package kr.or.ddit.manager.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.vo.AttVO;
import lombok.Data;

@Data
public class ManageVO {

	private int manageNum;
	private String manageTitle;
	private String manageContent;
	private String manageStatus;
	private Date manageDay;
	private String memId;
	private String manageId;
	
	private MultipartFile[] manageFile;
	private List<AttVO> manageFileList;
	
	public void setmanageFile(MultipartFile[] manageFile) {
		this.manageFile=manageFile;
		if(manageFile !=null) {
			List<AttVO> manageFileList = new ArrayList<AttVO>();
			for(MultipartFile item : manageFile) {
				if(StringUtils.isBlank(item.getOriginalFilename())) {
					continue;
				}
				AttVO manageFileVO = new AttVO(item);
				manageFileList.add(manageFileVO);
			}
			this.manageFileList = manageFileList;
		}
	}
}
