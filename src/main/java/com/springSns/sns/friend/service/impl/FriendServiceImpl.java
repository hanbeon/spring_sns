package com.springSns.sns.friend.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springSns.sns.common.CommonVO;
import com.springSns.sns.friend.service.FriendService;
import com.springSns.sns.friend.service.FriendVO;

@Service(value="friendService")
public class FriendServiceImpl implements FriendService{

	@Resource(name="friendMapper")
	private FriendMapper friendMapper;

	@Override
	public int addTempFriend(FriendVO params) throws Exception {
		
		return friendMapper.addTempFriend(params);
	}

	@Override
	public List<FriendVO> selectSearchFriends(CommonVO params) throws Exception {
		
		return friendMapper.selectSearchFriends(params);
	}

	@Override
	public List<FriendVO> selectRequestFriends(String email) throws Exception {
		
		return friendMapper.selectRequestFriends(email);
	}

	@Override
	public List<FriendVO> selectResponseFirends(String toEmail) throws Exception {
		
		return friendMapper.selectResponseFirends(toEmail);
	}

	@Override
	public int selectTempFriendExistence(FriendVO params) throws Exception {
		
		return friendMapper.selectTempFriendExistence(params);
	}

	@Override
	public int selectFriendCnt(FriendVO params) throws Exception {
		
		return friendMapper.selectFriendCnt(params);
	}
	
	@Override
	public int addFirend(FriendVO params) throws Exception {
		
		params.setState("Y");
		friendMapper.updateTempFriend(params);
		return friendMapper.addFriend(params);
	}

	@Override
	public List<FriendVO> getFriends(String email) throws Exception {
		return friendMapper.getFriends(email);
	}

}
