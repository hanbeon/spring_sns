package com.springSns.sns.chat.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springSns.sns.chat.service.ChatRoomVO;

@Mapper
public interface ChatMapper {

	public void insertChatRoom(ChatRoomVO param) throws Exception;
	
	public void insertChatRoomOption(ChatRoomVO param) throws Exception;
	
	public void insertChatRoomJoinUser(ChatRoomVO param) throws Exception;
	
	public List<ChatRoomVO> getWebChatList(String p_userEmail) throws Exception;
	
	public List<ChatRoomVO> getChatJoinUser(String p_openWebChatId) throws Exception;

}
