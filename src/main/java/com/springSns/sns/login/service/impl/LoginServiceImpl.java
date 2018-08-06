package com.springSns.sns.login.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springSns.sns.login.service.LoginService;
import com.springSns.sns.login.service.LoginVO;

@Service(value="loginService")
public class LoginServiceImpl implements LoginService{

	@Resource(name="loginMapper")
	LoginMapper loginMapper;
	
	@Override
	public List<LoginVO> testList() throws Exception {
		
		return loginMapper.testList();
	}

	@Override
	public int insertMember(LoginVO params) throws Exception {
		String tempId = UUID.randomUUID().toString().replaceAll("-", "").substring(0, 16);
		params.setId(tempId);
		System.out.println("##1");
		return loginMapper.insertMember(params);
	}

	@Override
	public int emailOverlap(String param) throws Exception {
		
		return loginMapper.emailOverlap(param);
	}

	@Override
	public int loginProcess(LoginVO params) throws Exception {
		
		return loginMapper.loginProcess(params);
	}

	@Override
	public void insertAccessLogin(LoginVO params) throws Exception {
		
		loginMapper.insertAccessLogin(params);
	}

}
