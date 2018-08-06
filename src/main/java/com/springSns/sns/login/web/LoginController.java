package com.springSns.sns.login.web;

import java.util.Collection;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springSns.sns.common.CommonUtil;
import com.springSns.sns.login.service.LoginService;
import com.springSns.sns.login.service.LoginVO;

/**
 * @Class       : LoginController.java
 * @Description : Login 관련 컨트롤러
 *
 * @Modification Infomation
 * @
 * @  수정일      수정자              수정내용
 * @ ----------  ---------   -------------------------------
 * @ 2018. 1. 20.   JONG   최초생성
 * 
 * @author      : JONG
 * @since 2018. 1. 20.
 */
@Controller
public class LoginController {
	
	/*
	 * Validator 설정 
	 */
	@Resource
	Validator validator;
	@InitBinder()
	public void initBinder(WebDataBinder dataBinder){
		
		dataBinder.setValidator(this.validator);
	}
	
	
	@Resource(name="loginService")
	LoginService loginService;

	@Value("#{openApi['http.base_url']}")
	String baseUrl;
	
	@Value("#{openApi['naver.api.client.id']}")
	String naverApiId;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	/**
	 * @Comment   init Login page
	 * @param     
	 * @author    JONG
	 * @since     2018. 1. 20.
	 */
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String initLogin(LoginVO loginVO, ModelMap map){
		
		map.addAttribute("naverApi", naverApiId);
		
		return "login/login.login-tiles";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		logger.info("로그아웃...{}", session.getAttribute("userEmail"));
		session.invalidate();
		return "redirect:/login";
	}
	
	/**
	 * @Comment   
	 * @param loginVO
	 * @param map
	 * @return
	 * @author    JONG
	 * @since     2018. 5. 15.
	 */
	@RequestMapping(value="loginSuccess")
	public String loginSuccess(HttpSession session, HttpServletRequest request) throws Exception {
		
		LoginVO loginVo = new LoginVO();
		loginVo =  (LoginVO)SecurityContextHolder.getContext().getAuthentication().getDetails();
		Collection<?extends GrantedAuthority> granted = SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String role="";
		for ( int i =0; i < granted.size(); i++ ) {
			 role = granted.toArray()[i] + "";
			 logger.info("role [" + i + "] is -> " + role);
		}
		String requestIp = request.getRemoteAddr();
		System.out.println(requestIp);
		loginVo.setAccessIp(requestIp);
		
		//Login Access 이력 저장.
		loginService.insertAccessLogin(loginVo);
		
		session.setAttribute("userId", loginVo.getId());
		session.setAttribute("userEmail", loginVo.getEmail());
		session.setAttribute("userFirstNm", loginVo.getFirstName());
		session.setAttribute("userLastNm", loginVo.getLastName());
		return "redirect:main";
	}
	
	
	@RequestMapping(value="member", method = RequestMethod.GET)
	public String member(LoginVO loginVO){
		
		return "redirect:login";
	}
	
	@RequestMapping(value="member", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	public String member(@Validated LoginVO params, BindingResult bindingResult, 
			ModelMap map, HttpServletRequest request) throws Exception{
		System.out.println("@22");
		request.setCharacterEncoding("UTF-8");
		if (bindingResult.getErrorCount() > 0) {
			System.out.println("1");
			map.put("tag", "signTab");
			
			return "login/login.login-tiles";
			
		} else {
			String password = params.getPassword();
			password= CommonUtil.setEncryptSHA256( password );
			params.setPassword(password);
			loginService.insertMember(params);
			return "redirect:login";
		}
	}
	
}
