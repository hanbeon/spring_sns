package com.springSns.sns.chat.dao;

import java.util.List;

import com.springSns.sns.chat.service.ChatRoomVO;

public interface ChatDAO {
	
	public List<ChatRoomVO> getChatJoinUser(String p_openWebChatId) throws Exception;

}
