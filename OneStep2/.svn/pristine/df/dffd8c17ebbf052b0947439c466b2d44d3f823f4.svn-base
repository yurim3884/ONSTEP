package kr.or.ddit.board.controller;

import java.io.File;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.view.AbstractView;

public class BoardDownloadView extends AbstractView {

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		
		Map<String, Object> boardFileMap = (Map<String, Object>) model.get("boardFileMap");
		
		File saveFile = new File(boardFileMap.get("fileSavepath").toString());
		String filename = boardFileMap.get("fileName").toString();
		String agent = request.getHeader("User-Agent");	 // 한글 깨질때 쓰는것
		if(StringUtils.containsIgnoreCase(agent, "mise")) {
			filename = URLEncoder.encode(filename, "UTF-8");
		}else {
			filename = new String(filename.getBytes(), "ISO-8859-1");
		}
		
		response.setHeader("Content-Disposition", "attachment;filename=\""+filename+"\"");
		response.setHeader("Content-Length", boardFileMap.get("fileSize").toString());
		OutputStream os = response.getOutputStream();
		FileUtils.copyFile(saveFile, os);
		
	}
	

}
