package kr.or.ddit.freelancer.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.freelancer.service.IFreeService;
import kr.or.ddit.freelancer.vo.FreeVO;
import kr.or.ddit.mapper.FreeMapper;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.AttVO;
import kr.or.ddit.vo.FaqVO;

@Service
public class FreeServiceImpl implements IFreeService {

	@Inject
	private FreeMapper freemapper;
			
			

	@Override
	public void insertFree(FreeVO free) {
		freemapper.insertFree(free);
		freemapper.updateMemFree(free);
	}

	@Override
	public List<FreeVO> freeList() {
		// TODO Auto-generated method stub
		return freemapper.freeList();
	}

	@Override
	public void insertProject(HttpServletRequest req, AnnoVO anno) throws Exception {
		freemapper.insertProject(anno);

		if (anno.getAttAnno().getSize() > 0) {
			String uuid = UUID.randomUUID().toString();
			String fileName = anno.getAttAnno().getOriginalFilename().replaceAll(" ", "_");
			String path = req.getSession().getServletContext().getRealPath("/resources/upload");
			String savePath = path + "/";
			fileName += "_" + uuid;

			File file = new File(savePath);
			if (!file.exists()) {
				file.mkdirs();
			}

			savePath += "/" + fileName;
			File saveFile = new File(savePath);

			anno.setAttId(fileName);
			System.out.println("아아앙 :" + anno.getAnnoId());
			freemapper.insertAnnoFile(anno);

			// 방법1
			anno.getAttAnno().transferTo(saveFile); // 파일 복사

		}

	}

	@Override
	public List<AnnoVO> projList() {
		// TODO Auto-generated method stub
		return freemapper.projList();
	}

	@Override
	public AnnoVO projDetail(int annoId) {
		// TODO Auto-generated method stub
		return freemapper.projDetail(annoId);
	}

	@Override
	public FreeVO freeDetail(int freeNum) {
		// TODO Auto-generated method stub
		return freemapper.freeDetail(freeNum);
	}

	@Override
	public List<BoardVO> inquirylist(String memId) {
		// TODO Auto-generated method stub
		return freemapper.inquirylist(memId);
	}

	@Override
	public BoardVO inquiry(int boardId) {
		// TODO Auto-generated method stub
		return freemapper.inquiry(boardId);
	}

	@Override
	public ServiceResult insertInqu(HttpServletRequest req, BoardVO board) {
		ServiceResult result = null;
		int status = freemapper.insertInqu(board);
		if (status > 0) {
			List<AttVO> boardFileList = board.getBoardFileList();
			try {
				processBoardFile(boardFileList, board.getBoardId(), req, board.getMemId());
			} catch (Exception e) {
				e.printStackTrace();
			}
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	private void processBoardFile(List<AttVO> boardFileList, int boardId, HttpServletRequest req, String memId) throws Exception {
		
		if (boardFileList != null && boardFileList.size() > 0) {
			for (AttVO attVO : boardFileList) {
				String savedName = UUID.randomUUID().toString();
				savedName = savedName + "_" + attVO.getAttFileName().replaceAll(" ", "_");
				String endFileName = attVO.getAttFileName().split("\\.")[1];
				String saveLocate = req.getServletContext().getRealPath("/resources/board/" + boardId);

				File file = new File(saveLocate);
				if (!file.exists()) {
					file.mkdirs();
				}

				saveLocate += "/" + savedName;
				File saveFile = new File(saveLocate);
				attVO.setBoardId(boardId);
				attVO.setMemId(memId);
				attVO.setAttSaveName(savedName);
				attVO.setAttPath(saveLocate);
				freemapper.insertBoardFile(attVO);

				attVO.getItem().transferTo(saveFile);
			}
		}
	}

	@Override
	public ServiceResult updateBoard(HttpServletRequest req, BoardVO boardVO) {
		ServiceResult result = null;
		int status = freemapper.updateBoard(boardVO);
		if (status > 0) {
			freemapper.deleteBoardFile(boardVO.getBoardId());
			List<AttVO> boardFileList = boardVO.getBoardFileList();
			try {
				processBoardFile(boardFileList, boardVO.getBoardId(), req, boardVO.getMemId());
			} catch (Exception e) {
				e.printStackTrace();
			}
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public ServiceResult deleteInquiry(HttpServletRequest req,int boardId) {
		ServiceResult result = null;
		BoardVO boardVO = freemapper.inquiry(boardId);
//		boardVO.getBoardCategory(boardCategory);
		freemapper.deleteBoardFileByBoardId(boardId);
		int cnt = freemapper.deleteBoard(boardId);
		if(cnt>0) {
			List<AttVO> boardFileList = boardVO.getBoardFileList();
			try {
				if(boardFileList !=null) {
					String[] filePath = boardFileList.get(0).getAttPath().split("/");
					int cutNum = boardFileList.get(0).getAttPath().lastIndexOf(filePath[filePath.length-1]);
					String path = boardFileList.get(0).getAttPath().substring(0,cutNum);
					deleteFolder(req,path);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			result = ServiceResult.OK;
		}else {
			result=ServiceResult.FAILED;
		}
		return result;
	}

	private void deleteFolder(HttpServletRequest req, String path) {
		File folder = new File(path);
		try {
			if(folder.exists()) {
				File[] folderList = folder.listFiles();
				
				for(int i=0; i<folderList.length; i++) {
					if(folderList[i].isFile()) {
						folderList[i].delete();
					}else {
						deleteFolder(req,folderList[i].getPath());
					}
				}
				folder.delete(); //폴더 삭제
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

	@Override
	public List<AttVO> selectBoardFile(int boardId) {
		// TODO Auto-generated method stub
		return freemapper.selectBoardFile(boardId);
	}

	@Override
	public void delete(int boardId) {
		freemapper.delete(boardId);
		freemapper.deleteBoardFile(boardId);
		
	}

	@Override
	public List<FaqVO> selectFaq() {
		// TODO Auto-generated method stub
		return freemapper.selectFaq();
	}

	@Override
	public MemberVO member(String memId) {
		// TODO Auto-generated method stub
		return freemapper.member(memId);
	}
	
	
}
