package com.springSns.sns.common.handler;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;


public class WebSocketHandler extends TextWebSocketHandler{

	private Logger logger = LoggerFactory.getLogger(WebSocketHandler.class);
	private List<WebSocketSession> wbSessionList = new ArrayList<WebSocketSession>();
	
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		ObjectMapper mapper = new ObjectMapper();
		
		logger.info("{} 접속," + session.getId() + "\t" + session.getPrincipal().getName());
		Map<String,Object> map = session.getAttributes();
		System.out.println("Size::"+map.size());
		System.out.println(map.get("userEmail"));
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

		logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
		
		System.out.println("#### " + session.getAttributes().get("openWebChatId"));
		
		logger.info("User Name :: {}",session.getPrincipal().getName());
		
		for ( WebSocketSession sess : wbSessionList ) {
			sess.sendMessage(new TextMessage(session.getPrincipal().getName()+ " | " + message.getPayload()));
		}
	}
	
	

	

}
