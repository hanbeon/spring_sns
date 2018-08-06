package com.springSns.sns.friend.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springSns.sns.common.CommonVO;
import com.springSns.sns.friend.service.FriendVO;

@Mapper()
public interface FriendMapper {

	public int addTempFriend(FriendVO params) throws Exception;
	
	public List<FriendVO> selectSearchFriends(CommonVO params) throws Exception;
	
	public List<FriendVO> selectRequestFriends(String email) throws Exception;
	
	public List<FriendVO> selectResponseFirends(String toEmail) throws Exception;
	
	public int selectTempFriendExistence(FriendVO params) throws Exception;
	
	public int selectFriendCnt(FriendVO params) throws Exception;
	
	public int addFriend(FriendVO params) throws Exception;
	
	public int updateTempFriend(FriendVO params) throws Exception;
	
	public List<FriendVO> getFriends(String email) throws Exception;
}
