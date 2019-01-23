package com.spring.bnb.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.bnb.model.MemberVO;
import com.spring.bnb.model.ReviewVO;
import com.spring.bnb.model.RoomVO;

public interface InterHYDAO {

	RoomVO getRoomByCode(String roomcode);

	MemberVO logincheck(MemberVO member);

	int insertLikeRoom(HashMap<String, Object> paraMap);

	List<HashMap<String, Object>> getMyLikeRoomList(String userid);

	List<ReviewVO> getSearchReview(HashMap<String, String> paraMap);

	int checkDuplicateID(String userid);

	int insertMember(MemberVO member);

}
