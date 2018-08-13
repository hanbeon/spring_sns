package com.springSns.sns.chat.service;

import java.util.List;
import java.util.Map;

public interface ChatService {

	public void createChatRoom(List< Map<String, Object> > params) throws Exception;
	
	public List<ChatRoomVO> getWebChatList(String p_userEmail) throws Exception;
	
	public List<ChatRoomVO> getChatLogList(String p_chatRoomId) throws Exception;
}
