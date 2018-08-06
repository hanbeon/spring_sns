package com.springSns.sns.member.service;

import java.util.List;

import com.springSns.sns.common.CommonVO;
import com.springSns.sns.login.service.LoginVO;

public interface MemberService {

	public LoginVO selectOneMember(CommonVO params) throws Exception;
	
	public List<LoginVO> selectSearchMember(CommonVO params) throws Exception;
}
