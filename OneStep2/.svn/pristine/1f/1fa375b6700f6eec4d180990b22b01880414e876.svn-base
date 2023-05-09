package kr.or.ddit.common;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
	
	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception {
		UUID uuid = UUID.randomUUID();	
		
		String savedName = uuid.toString() + "_" + originalName;
		// /2023/03/07과 같은 폴더 경로를 만들고, /2023/03/07 폴더 경로를 리턴한다.
		String savedPath = calcPath(uploadPath); // 만들어서 savedPath로 내보내 준다. 
		File target = new File(uploadPath + savedPath, savedName);
		FileCopyUtils.copy(fileData,  target);	// 파일 복사 (넘겨준 파일데이터와 여기서만든 파일경로를 집어넣어서 )
		
		String formatName = originalName.substring(originalName.lastIndexOf(".") + 1);	// 확장자 추출
		// separatorChar: \2023\03\07(역슬래시로된경로)  폴더 경로로 만들고, /2023/03/07 폴더 경로를 리턴한다. (슬래시로 바꿔 줌)
		String uploadedFileName = savedPath.replace(File.separatorChar, '/') + "/" + savedName;	
		
		// 확장자가 이미지 파일이면 s_가 붙은 파일의 썸네일 이미지파일을 생성한다. 
		if (MediaUtils.getMediaType(formatName) != null) {	// 확장자 타입에 따라 이미지파일인지 검증
			makeThumbnail(uploadPath, savedPath, savedName);	// 썸네일 만듦
		}
		return uploadedFileName;
	}
	
	// s_가 붙은 썸네일 파일로 만들어 준다. 
	private static void makeThumbnail(String uploadPath, String path, String fileName) throws IOException {
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100); // Scalr: 이미지 리사이징 라이브러리. pom.xml에 등록
		
		String thumbnailName = uploadPath + path + File.separator + "s_" + fileName;	// s_가 붙은 섬네일이미지를 작은사이즈로 만듦
		// File.separator는 프로그램이 실행 중인 OS에 해당하는 구분자를 리턴 (윈도우: \ (요즘은 /도 인식), 리눅스, 맥: /)
		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1); // 확장자 추출
		
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
	}

	// 2023/03/06과 같은 폴더들을 만들어주는 역할 (폴더명을 만들어주는 곳, 해당 폴더를 진짜 만들어주는 곳은 아래의 makeDir )
	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		// DecimalFormat("00") ::: 두자리에서 빈 자리는 0으로 채워줍니다. 
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		makeDir(uploadPath, yearPath, monthPath, datePath);	// 총 4개의 파라미터 넣어서 makeDir 만듦
		return datePath;
	}
	
	// 가변인자
	// 키워드 '...'를 사용한다. 
	// [사용법] 타입...변수명 형태로 사용
	// 순서대로 yearPath, monthPath, datePath가 배열로 들어온다. -> 그래서 포문으로 paths안의 거 하나씩 꺼낼수있던것
	
	// calcPath함수에서 만들어진 폴더명을 가지고 실제 폴더 경로에 폴더들을 만들어 주는 곳 
	private static void makeDir(String uploadPath, String ...paths) { 
		if (new File(paths[paths.length-1]).exists()) {
			return;
		}
		
		for (String path: paths) {
			File dirPath = new File(uploadPath + path);
			
			if (!dirPath.exists()) {
				dirPath.mkdirs(); // 경로 존재하지 않으면 만들어줌 
			}
		}
	}
}
