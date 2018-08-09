package com.springSns.sns.chat.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springSns.sns.chat.service.ChatRoomVO;
import com.springSns.sns.chat.service.ChatService;

@Controller
@RequestMapping("/chat")
public class ChatController {

	@Resource(name="chatService")
	private ChatService chatService;
	
	public @ResponseBody Object createRoom( Map<String, Object> params ) throws Exception{
		
		ChatRoomVO vo = new ChatRoomVO();
		
		chatService.createChatRoom(vo);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		
		return resultMap;
	}
}
