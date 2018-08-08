package com.springSns.sns.common.handler.dao;

import com.springSns.sns.common.handler.dao.ChatRoomVO;

public interface ChatDAO {

	public void createRoom( ChatRoomVO param ) throws Exception;
}
