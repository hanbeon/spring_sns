package com.springSns.sns.member.web;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springSns.sns.common.CommonVO;
import com.springSns.sns.login.service.LoginVO;
import com.springSns.sns.member.service.MemberService;

@Controller
@RequestMapping(value="/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@RequestMapping(value="/selectOneMember")
	public String selectOneMember(@ModelAttribute(value="params") CommonVO params) throws Exception{
		
		LoginVO result = memberService.selectOneMember(params);
		
		ModelAndView mv = new ModelAndView();
		
		return "";
	}
}
