package com.springSns.sns.friend.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.WebSocketSession;

import com.google.gson.JsonObject;
import com.springSns.sns.common.CommonVO;
import com.springSns.sns.friend.service.FriendService;
import com.springSns.sns.friend.service.FriendVO;
import com.springSns.sns.member.service.MemberService;

@Controller
@RequestMapping(value="/friend")
public class FriendController {
	
	private static final Logger logger = LoggerFactory.getLogger(FriendController.class);
	
	@Resource(name="friendService")
	private FriendService friendService;
	
	@Resource(name="memberService")
	private MemberService memberService;

	//친구 찾기
	@RequestMapping( value="/searchFirendAjax", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	public @ResponseBody Object searchFriendAjax(@ModelAttribute CommonVO params,
			HttpSession session) throws Exception{
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		String email = (String)session.getAttribute("userEmail");
		
		params.setEmail(email);
		
		List<FriendVO> resultList = friendService.selectSearchFriends(params);
		resultMap.put("list", resultList);
		
		return resultMap;
	}
	
	//
	@RequestMapping( value="/addTempFriend", method = RequestMethod.POST)
	public @ResponseBody  int addTempFriend(HttpSession session, 
			@ModelAttribute(value="params") FriendVO params) throws Exception{
		
		params.setEmail((String)session.getAttribute("userEmail"));
		
		int result = 0;
		
		int alreadyFriend = friendService.selectTempFriendExistence(params);
		System.out.println("### " + alreadyFriend);
		System.out.println(params.getEmail());
		System.out.println(params.getToEmail());
		if ( alreadyFriend == 0 ){
			
			result = friendService.addTempFriend(params);
		} else {
			
			result = 0;
		}
		
		return result;
	}
	
	@RequestMapping( value="/request" )
	public String request(HttpSession session, ModelMap map) throws Exception {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		String email = (String)session.getAttribute("userEmail");
		System.out.println("Eamil :: " + email);
		List<FriendVO> requestList = friendService.selectRequestFriends(email);
		System.out.println("request : " + requestList.size());
		List<FriendVO> responseList = friendService.selectResponseFirends(email);
		System.out.println("response : " + responseList.size());
		
		resultMap.put("requestList", requestList);
		resultMap.put("responseList", responseList);
		
		map.put("result", resultMap);
		
		return "friend/request.tiles";
	}

	@RequestMapping( value="/acceptFriend", method = RequestMethod.POST)
	public @ResponseBody int acceptFriend(HttpSession session, @ModelAttribute(value="params") FriendVO params) throws Exception {
		System.out.println("1");
		params.setEmail((String)session.getAttribute("userEmail"));
		System.out.println("2");
		int cnt = 0 ; 
		int result = 0;
		System.out.println("3");
		cnt = friendService.selectFriendCnt(params);
		System.out.println("4");
		if ( cnt == 0) {
			System.out.println("5");
			result = friendService.addFirend(params);
			System.out.println("6");
		}
		
		return result;
	}
	
	@RequestMapping( value="/getFriends", method = RequestMethod.POST)
	public @ResponseBody Object getFriends(HttpSession session) throws Exception{
		
		String email = (String)session.getAttribute("userEmail");
		
		List<FriendVO> params = friendService.getFriends(email);
		
		Map<Object, Object> result = new HashMap<Object, Object>();
		result.put("friendList", params);
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		return result;
	}
}
