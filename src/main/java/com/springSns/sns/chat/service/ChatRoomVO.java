package com.springSns.sns.chat.service;

import java.util.List;

public class ChatRoomVO {

	private int chatRoomSeq;
	private String chatRoomId;
	
	//log
	private String chatMessage;
	private String chatWriter;
	private String chatRegDT;
	
	//option
	private String chatName;
	private int chatParticipantCnt;
	private String chatRoomType;
	
	//person
	private List<String> chatJoinEmail;
	private String chatUserEmail;
	
	public int getChatRoomSeq() {
		return chatRoomSeq;
	}
	public void setChatRoomSeq(int chatRoomSeq) {
		this.chatRoomSeq = chatRoomSeq;
	}
	public String getChatRoomId() {
		return chatRoomId;
	}
	public void setChatRoomId(String chatRoomId) {
		this.chatRoomId = chatRoomId;
	}
	public String getChatMessage() {
		return chatMessage;
	}
	public void setChatMessage(String chatMessage) {
		this.chatMessage = chatMessage;
	}
	public String getChatWriter() {
		return chatWriter;
	}
	public void setChatWriter(String chatWriter) {
		this.chatWriter = chatWriter;
	}
	public String getChatRegDT() {
		return chatRegDT;
	}
	public void setChatRegDT(String chatRegDT) {
		this.chatRegDT = chatRegDT;
	}
	public String getChatName() {
		return chatName;
	}
	public void setChatName(String chatName) {
		this.chatName = chatName;
	}
	public int getChatParticipantCnt() {
		return chatParticipantCnt;
	}
	public void setChatParticipantCnt(int chatParticipantCnt) {
		this.chatParticipantCnt = chatParticipantCnt;
	}
	public String getChatRoomType() {
		return chatRoomType;
	}
	public void setChatRoomType(String chatRoomType) {
		this.chatRoomType = chatRoomType;
	}
	public String getChatUserEmail() {
		return chatUserEmail;
	}
	public void setChatUserEmail(String chatUserEmail) {
		this.chatUserEmail = chatUserEmail;
	}
	public List<String> getChatJoinEmail() {
		return chatJoinEmail;
	}
	public void setChatJoinEmail(List<String> chatJoinEmail) {
		this.chatJoinEmail = chatJoinEmail;
	}
	@Override
	public String toString() {
		return "ChatRoomVO [chatRoomSeq=" + chatRoomSeq + ", chatRoomId=" + chatRoomId + ", chatMessage=" + chatMessage
				+ ", chatWriter=" + chatWriter + ", chatRegDT=" + chatRegDT + ", chatName=" + chatName
				+ ", chatParticipantCnt=" + chatParticipantCnt + ", chatRoomType=" + chatRoomType + ", chatJoinEmail="
				+ chatJoinEmail + ", chatUserEmail=" + chatUserEmail + ", toString()=" + super.toString() + "]";
	}
	
	
}
