package com.springSns.sns.common.handler.dao;

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
	private String chatEmail;
	
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
	public String getChatEmail() {
		return chatEmail;
	}
	public void setChatEmail(String chatEmail) {
		this.chatEmail = chatEmail;
	}
	@Override
	public String toString() {
		return "ChatRoomVO [chatRoomSeq=" + chatRoomSeq + ", chatRoomId=" + chatRoomId + ", chatMessage=" + chatMessage
				+ ", chatWriter=" + chatWriter + ", chatRegDT=" + chatRegDT + ", chatName=" + chatName
				+ ", chatParticipantCnt=" + chatParticipantCnt + ", chatRoomType=" + chatRoomType + ", chatEmail="
				+ chatEmail + ", toString()=" + super.toString() + "]";
	}
	
	
}
