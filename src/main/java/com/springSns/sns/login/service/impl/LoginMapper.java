package com.springSns.sns.login.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springSns.sns.login.service.LoginVO;

@Mapper
public interface LoginMapper {

	List<LoginVO> testList() throws Exception;
	
	public int insertMember(LoginVO params) throws Exception;
	
	public int emailOverlap(String param) throws Exception;
	
	public int loginProcess(LoginVO params) throws Exception;
	
	public void insertAccessLogin(LoginVO params) throws Exception;
}
