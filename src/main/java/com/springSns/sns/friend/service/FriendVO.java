package com.springSns.sns.friend.service;

import com.springSns.sns.login.service.LoginVO;

public class FriendVO extends LoginVO{

	private String toEmail;
	private String state;

	public String getToEmail() {
		return toEmail;
	}

	public void setToEmail(String toEmail) {
		this.toEmail = toEmail;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
}
