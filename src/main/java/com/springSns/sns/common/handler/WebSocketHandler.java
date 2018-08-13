package com.springSns.sns.common.handler;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springSns.sns.chat.dao.ChatDAO;
import com.springSns.sns.chat.service.ChatRoomVO;


public class WebSocketHandler extends TextWebSocketHandler{

	private Logger logger = LoggerFactory.getLogger(WebSocketHandler.class);
	private List<WebSocketSession> wbSessionList = new ArrayList<WebSocketSession>();
	
	@Inject
	private ChatDAO chatDao;
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		ObjectMapper mapper = new ObjectMapper();
		
		logger.info("{} 접속," + session.getId() + "\t" + session.getPrincipal().getName());
		Map<String,Object> map = session.getAttributes();
		System.out.println(mapper.writeValueAsString(map));
		wbSessionList.add(session);
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		wbSessionList.remove(session);
		logger.info("{} 종료");
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

		String openWebChatId = (String) session.getAttributes().get("openWebChatId");
		logger.info("채팅 오픈 Id :: {}", openWebChatId);
		List<ChatRoomVO> getChatJoinUser = chatDao.getChatJoinUser(openWebChatId);
		
		logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
		
		ChatRoomVO logParam = new ChatRoomVO();
		
		//채팅 로그 작성
		logParam.setChatRoomId(openWebChatId);
		logParam.setChatMessage(message.getPayload());
		logParam.setChatWriter(session.getPrincipal().getName());
		chatDao.insetChat(logParam);
		
		logger.info("User Name :: {}",session.getPrincipal().getName());
		
		for ( WebSocketSession sess : wbSessionList ) {
			
			for ( ChatRoomVO param : getChatJoinUser ) {
				if ( param.getChatUserEmail().equals(sess.getPrincipal().getName()) ){
					
					sess.sendMessage(new TextMessage(session.getPrincipal().getName()+ " | " + message.getPayload()+ " | " + openWebChatId));
				}
			}
		}
	}
	
	

	

}
