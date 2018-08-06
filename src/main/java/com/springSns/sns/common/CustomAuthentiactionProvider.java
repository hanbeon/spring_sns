package com.springSns.sns.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.springSns.sns.login.service.LoginVO;
import com.springSns.sns.login.web.LoginController;

public class CustomAuthentiactionProvider implements AuthenticationProvider{
	
	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);
	
	/*
	 * Validator 설정 
	 */
	@Resource
	 Validator validator;
	
	@InitBinder()
	public void initBinder(WebDataBinder dataBinder){
		
		dataBinder.setValidator(this.validator);
	}
	
	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return  authentication.equals(UsernamePasswordAuthenticationToken.class);
	}
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String userId = (String)authentication.getPrincipal();
		String userPw = (String)authentication.getCredentials();
		
		logger.info("사용자 로그인 시도. {}", userId);
		
		LoginVO params = new LoginVO();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		params.setEmail(userId);
		params.setPassword(CommonUtil.setEncryptSHA256(userPw) );
		/*try{*/
			SqlMapClient client = new SqlMapClient();
			SqlSession session = client.getSqlSession();
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("email", params.getEmail());
			paramMap.put("password", params.getPassword());
			int resultCnt = session.selectOne("formValidator.selectOneMemberCnt", paramMap);
			
			
			if ( resultCnt <= 0) {
				
				logger.info("로그인 정보가 알맞지 않습니다.");
				session.close();
				throw new BadCredentialsException("로그인 정보가 알맞지 않습니다");
			} else {
				
				resultMap = session.selectOne("formValidator.selectOneMember", paramMap);
			}
			session.close();
		/*}catch(Exception e){
			new Exception("Login Error");
		}*/
		
		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		String ruleType = "ROLE_ADMIN";
		roles.add(new SimpleGrantedAuthority(ruleType));
		logger.info("로그인 성공 . {}", userId);
		UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(params.getEmail(), params.getPassword(), roles);
		params.setId( (String)resultMap.get("Id"));
		params.setFirstName( (String)resultMap.get("FirstName") );
		params.setLastName((String)resultMap.get("LastName"));
		params.setEmail( (String)resultMap.get("Email"));
		
		result.setDetails(params);
		return result;
		
	}


}
