package com.springSns.sns.member.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springSns.sns.common.CommonVO;
import com.springSns.sns.login.service.LoginVO;

@Mapper
public interface MemberMapper {
	
	public LoginVO selectOneMember(CommonVO params) throws Exception;
	
	public List<LoginVO> selectSearchMember(CommonVO params) throws Exception;
}
