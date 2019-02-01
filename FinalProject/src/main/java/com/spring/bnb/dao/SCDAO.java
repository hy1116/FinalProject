package com.spring.bnb.dao;

import org.springframework.stereotype.Repository;

import com.spring.bnb.model.ReviewVO;
import com.spring.bnb.model.RoomVO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

@Repository
public class SCDAO implements InterSCDAO {
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	// 해당유저의 숙소리스트 가져오기
	@Override
	public List<RoomVO> getRoomList(String userid) {
		List<RoomVO> roomList = sqlsession.selectList("sc.getRoomList", userid);
		return roomList;
	}
	
	// 룸정보 가져오기
	@Override
	public RoomVO getRoomInfo(String roomcode) {
		RoomVO roomvo = sqlsession.selectOne("sc.getRoomInfo",roomcode);

		String buildType_detail_idx = roomvo.getFk_buildType_detail_idx();
		//System.out.println("buildType_detail_idx : "+buildType_detail_idx);
		
		String buildType_detail_name = sqlsession.selectOne("sc.getBuildType_detail",buildType_detail_idx); 
		roomvo.setBuildType_detail_name(buildType_detail_name);

		List<String> roomimgList = sqlsession.selectList("sc.getRoomImgList", roomcode);// 숙소 사진 리스트
		roomvo.setRoomimgList(roomimgList);
	
		List<HashMap<String,String>> optionList = sqlsession.selectList("sc.getRoomOptionList", roomcode); // 숙소 옵션 리스트
		roomvo.setOptionList(optionList);
		

		return roomvo;
	}
	
	//룸이미지 추가하기
	@Override
	public int setRoomImg(HashMap<String, String> paraMap) {
		int n = sqlsession.insert("sc.setRoomImg", paraMap);
		return n;
	}

	//룸이미지 삭제하기
	@Override
	public int deleteFile(String deleteFilename) {
		int n = sqlsession.delete("sc.deleteFile", deleteFilename);
		return n;
	}

	@Override
	public int updateCoverImg(HashMap<String, String> paraMap) {
		int n = sqlsession.update("sc.updateCoverImg", paraMap);
		return n;
	}
	
	
	@Override
	public List<RoomVO> roomnameSearch(HashMap<String, String> paraMap) {
		List<RoomVO> roomList = sqlsession.selectList("sc.roomnameSearch", paraMap);
		return roomList;
	}

	@Override
	public List<HashMap<String, String>> getReview(String roomcode) {
	
		List<HashMap<String, String>> countList = new ArrayList<HashMap<String,String>>();
		
		for(int i=1; i<6; i++) {
			HashMap<String,String> paraMap = new HashMap<String, String>();
			paraMap.put("roomcode", roomcode);
			paraMap.put("garde", Integer.toString(i));
			
			//System.out.println(paraMap.get("roomcode"));
			//System.out.println(i);
			
			HashMap<String,String> countMap = sqlsession.selectOne("sc.getGradecount", paraMap);
			countMap.put("avgGrade", Integer.toString(i));
			countList.add(countMap);
		}
			
		return countList;
	}

	

}
