package com.springSns.sns.social.web;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springSns.sns.social.service.SocialService;

@Controller
public class SocialController {
	
	@Resource(name="socialService")
	private SocialService socialService;
	
	@RequestMapping(value="callback{social}Login")
	public String callbackSocial(@PathVariable("social") String social) throws Exception{
		
		return "social/callback" + social + "Login";
	}
	
	
	@RequestMapping(value="socialIdCheck", method = RequestMethod.POST)
	public void socialIdCheck(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		String socialSyncId        = request.getParameter("socialSyncId");
		String socialSyncTokenKey  = request.getParameter("socialSyncTokenKey");
		
		PrintWriter out = null;
		
		response.setCharacterEncoding("utf-8");
		out = response.getWriter();
		
		try{
			
			Map<String, Object> sociadCheck = socialService.selectSocialId(socialSyncId);
			
			request.getSession().setAttribute("socialSyncTokenKey", socialSyncTokenKey);
			
			if (sociadCheck != null) {
				
				if ( !sociadCheck.get("socialSyncTokenKey").equals(socialSyncTokenKey)) {
					
					HashMap<String, Object> castMap = new HashMap<String, Object>();
					
					castMap.put("socialSyncId", socialSyncId);
					
					castMap.put("socialSyncTokenKey", socialSyncTokenKey);
					
					socialService.updateTokenKey(castMap);
					
					out.write("exist");
				}
			} else {
				
				out.write("noExist");
			}
		}catch(Exception e){
			
		}
		
	}
	
	@RequestMapping(value="socialJoinView", method = RequestMethod.POST)
	public String socialJoinView(HttpServletRequest request, HttpServletResponse response,
			ModelMap model) throws Exception{
		
		return "redirect:login";
	}
}
