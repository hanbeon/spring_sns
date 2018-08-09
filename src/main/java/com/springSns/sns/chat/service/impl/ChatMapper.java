package com.springSns.sns.chat.service.impl;

import org.apache.ibatis.annotations.Mapper;

import com.springSns.sns.chat.service.ChatRoomVO;

@Mapper()
public interface ChatMapper {

	public void createChatRoom(ChatRoomVO param) throws Exception;
}
