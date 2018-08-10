package com.springSns.sns.chat.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springSns.sns.chat.service.ChatRoomVO;
import com.springSns.sns.chat.service.ChatService;

@Controller
@RequestMapping("/chat")
public class ChatController {

	@Resource(name="chatService")
	private ChatService chatService;
	
	private static Logger logger = LoggerFactory.getLogger(ChatController.class);
	
	@RequestMapping(value="/openWebChatId")
	public @ResponseBody void openWebChatId(HttpServletRequest reqeust, @RequestParam(value="openChatId") String p_openChatId ) {
		System.out.println("=================OPENCHATID :: " + p_openChatId);
		reqeust.getSession().setAttribute("openWebChatId", p_openChatId);
		System.out.println("=================SETSESSION :: " + reqeust.getSession().getAttribute("openWebChatId"));
	}
	
	@RequestMapping(value="/getWebChatList")
	public @ResponseBody Object getWebChatList(HttpServletRequest request) throws Exception{
		
		String userEmail = (String)request.getSession().getAttribute("userEmail");
		System.out.println("##userEmail" + userEmail);
		List<ChatRoomVO> getWebChatList = chatService.getWebChatList(userEmail);
		
		return getWebChatList;
	}
	
	@RequestMapping(value="/createChatRoom", method = RequestMethod.POST)
	public @ResponseBody Object createChatRoom( @RequestBody List< Map<String, Object> > params, HttpServletRequest request ) throws Exception{
		
		ObjectMapper mapper = new ObjectMapper();
		
		System.out.println(mapper.writeValueAsString(params));
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("id", request.getAttribute("userId"));
		sessionMap.put("email", request.getAttribute("userEmail"));
		params.add(sessionMap);
		chatService.createChatRoom(params);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		return resultMap;
	}
}
