package com.springSns.sns.friend.service;

import java.util.List;

import com.springSns.sns.common.CommonVO;

public interface FriendService {

	public int addTempFriend(FriendVO params) throws Exception;
	
	public List<FriendVO> selectSearchFriends(CommonVO params) throws Exception;
	
	public List<FriendVO> selectRequestFriends(String email) throws Exception;
	
	public List<FriendVO> selectResponseFirends(String toEmail) throws Exception;
	
	public int selectTempFriendExistence(FriendVO params) throws Exception;
	
	public int selectFriendCnt(FriendVO params) throws Exception;
	
	public int addFirend(FriendVO params) throws Exception;
	
	public int updateTempFriend(FriendVO params) throws Exception;
	
	public List<FriendVO> getFriends(String email) throws Exception;
}
