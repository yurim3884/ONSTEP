package kr.or.ddit.manager.serviceImpl;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.freelancer.vo.FreeVO;
import kr.or.ddit.manager.service.IManagerService;
import kr.or.ddit.manager.vo.ManageVO;
import kr.or.ddit.mapper.ManagerMapper;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.myPage.vo.ResumeVO;
import kr.or.ddit.prod.vo.ProdVO;
import kr.or.ddit.vo.AttVO;
import kr.or.ddit.vo.CommendVO;

@Service
public class ManagerServiceImpl implements IManagerService {

	@Resource(name="uploadPath")
	String uploadPath;
	
	@Inject
	private ManagerMapper mapper;
	
	@Override
	public void insertResume(CommendVO commendVO) {
		// TODO Auto-generated method stub
		mapper.insertResume(commendVO);
	}

	@Override
	public List<ProdVO> prodFree() {
		// TODO Auto-generated method stub
		return mapper.prodFree();
	}

	@Override
	public List<ProdVO> prodProj() {
		// TODO Auto-generated method stub
		return mapper.prodProj();
	}

	@Override
	public ResumeVO detail(String memId) {
		return mapper.detail(memId);
	}

	@Override
	public List<FreeVO> freedetail(String memId) {
		return mapper.freedetail(memId);
	}

	@Override
	public List<ManageVO> managerList(String memId) {
		return mapper.managerList(memId);
	}

	@Override
	public AttVO manageDownload(int attId) {
		AttVO attVO = mapper.manageDownload(attId);
		if(attVO ==null) {
			throw new RuntimeException();
		}
		mapper.incrementManageDowncount(attId);
		return attVO;
	}

	@Override
	public ServiceResult insertManage(ManageVO manageVO) {
		ServiceResult result = null;
		int status = mapper.insertManage(manageVO);
		if(status>0) {
			List<AttVO> manageFileList = manageVO.getManageFileList();
			try {
				processManageFile(manageFileList, manageVO.getManageNum(), manageVO.getMemId());	
			} catch (Exception e) {
				e.printStackTrace();
			}
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAILED;
		}
		return result;
	}
	
	private void processManageFile(
			List<AttVO> manageFileList,
			int manageNum,
			String memId) throws Exception {
		if(manageFileList !=null && manageFileList.size()>0) {
			for(AttVO attVO : manageFileList) {
				String savedName = UUID.randomUUID().toString();
				savedName = savedName + "_" + attVO.getAttFileName().replaceAll(" ", "_");
				String endFileName = attVO.getAttFileName().split("\\.")[1];
				String saveLocate =  uploadPath;
				
				File file = new File(saveLocate);
				if(!file.exists()) {
					file.mkdirs();
				}
				
				saveLocate +="/" + savedName;
				File saveFile = new File(saveLocate);
				attVO.setManageNum(manageNum);
				attVO.setMemId(memId);
				attVO.setAttSaveName(savedName);
				attVO.setAttPath(saveLocate);
				mapper.insertManageFile(attVO);
				
				attVO.getItem().transferTo(saveFile);
			}
		}
	}

	@Override
	public MemberVO memberdetail(String memId) {
		return mapper.memberdetail(memId);
	}


}
