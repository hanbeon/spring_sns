package com.springSns.sns.chat.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springSns.sns.chat.service.ChatRoomVO;
import com.springSns.sns.chat.service.ChatService;
import com.springSns.sns.common.CommonUtil;

@Service(value="chatService")
public class ChatServiceImpl implements ChatService{

	@Resource(name="chatMapper")
	private ChatMapper chatMapper;
	
	@Override
	@Transactional
	public void createChatRoom(List< Map<String, Object> > params) throws Exception{
		
		String chatRoomId = CommonUtil.makeChatRoomId();
		ChatRoomVO vo = new ChatRoomVO();
		
		vo.setChatRoomId( chatRoomId );
		
		List<String> tempList = new ArrayList<String>();
		
		for ( int i = 0; i < params.size(); i++ ) {
		
			if ( params.get(i).get("email") == null )continue;
			
			tempList.add( params.get(i).get("email").toString() );
		}
		
		//ChatRoom 개설
		chatMapper.insertChatRoom(vo);
		
		String chatName = tempList.size() > 2 ? tempList.get(0)+" 외 "+ (tempList.size()-1) +"명" : tempList.get(1)+" 채팅방";
		vo.setChatName(chatName);
		vo.setChatParticipantCnt(tempList.size());
		//ChatRoom 관련 설정 정보 
		chatMapper.insertChatRoomOption(vo);
		
		//ChatRoom 참여 인원 작성
		for ( String emailVal : tempList ) {
			vo.setChatUserEmail(emailVal);
			chatMapper.insertChatRoomJoinUser(vo);
		}
		
	}

	@Override
	public List<ChatRoomVO> getWebChatList(String p_userEmail) throws Exception {
		
		return chatMapper.getWebChatList(p_userEmail);
	}

	@Override
	public List<ChatRoomVO> getChatLogList(String p_chatRoomId) throws Exception {
		
		return chatMapper.getChatLogList(p_chatRoomId);
	}

}
