package com.springSns.sns.login.service;

import java.util.List;

public interface LoginService {
	
	List<LoginVO> testList() throws Exception;
	
	/*
	 * member Insert
	 */
	public int insertMember(LoginVO params) throws Exception; 
	
	public int emailOverlap(String param) throws Exception;
	
	public int loginProcess(LoginVO params) throws Exception;
	
	public void insertAccessLogin(LoginVO params) throws Exception;

}
