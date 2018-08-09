package com.springSns.sns.chat.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springSns.sns.chat.dao.ChatDAO;
import com.springSns.sns.chat.service.ChatRoomVO;

@Repository
public class ChatDAOImpl implements ChatDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static final String NAME_SAPCE = "com.springSns.sns.chat.service.impl.ChatMapper";
	
	@Override
	public List<ChatRoomVO> getChatJoinUser(String p_openWebChatId) throws Exception {
		
		return sqlSession.selectList(NAME_SAPCE+".getChatJoinUser", p_openWebChatId);
	}

}
