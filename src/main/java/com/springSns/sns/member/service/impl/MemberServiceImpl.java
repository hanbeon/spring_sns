package com.springSns.sns.member.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springSns.sns.common.CommonVO;
import com.springSns.sns.login.service.LoginVO;
import com.springSns.sns.member.service.MemberService;

@Service(value="memberService")
public class MemberServiceImpl implements MemberService{

	@Resource(name="memberMapper")
	private MemberMapper memberMapper;

	@Override
	public LoginVO selectOneMember(CommonVO params) throws Exception {
		
		return null;
	}

	@Override
	public List<LoginVO> selectSearchMember(CommonVO params) throws Exception {

		return memberMapper.selectSearchMember(params);
	}
}
