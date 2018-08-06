package com.springSns.sns.main.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springSns.sns.main.service.MainService;
import com.springSns.sns.main.service.PostVO;

@Controller
public class MainController {
	
	@Resource(name="mainService")
	private MainService mainService;

	@RequestMapping(value="/main")
	public String initMain(ModelMap model) {
		
		List<PostVO> getSnsList = new ArrayList<PostVO>();
		try{
			
			getSnsList = mainService.getSnsPostList();
			model.put("list", getSnsList);
		}catch(Exception e ){
			e.printStackTrace();
		}
		return "main.tiles";
	}
	
	@RequestMapping(value="/postProcess", method = RequestMethod.POST)
	public @ResponseBody Object postProcess(@ModelAttribute(value="postVO") PostVO postVO, 
			@Param(value = "action") String action , HttpSession session) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Map<String, Object> errorMap = new HashMap<String, Object>();
		int resultCnt = 0;
		ObjectMapper mapper = new ObjectMapper();
		String author = (String)session.getAttribute("userFirstNm") + (String)session.getAttribute("userLastNm");
		postVO.setAuthor(author);
		postVO.setEmail((String)session.getAttribute("userEmail"));
		System.out.println("POSTCONTENT"+postVO.getPostContents());
		try{
			System.out.println("## :" + mapper.writeValueAsString(postVO));
			
			if (!"".equals(postVO.getPostTitle()) && postVO.getPostTitle()!=null) {
				
				errorMap.put("postNameNull", "N");
				resultCnt = mainService.postProcess(postVO, action);
				
				if ( resultCnt > 0 ) {
					
					resultMap.put("result", "1");
				}
				
			} else {
				errorMap.put("postNameNull", "Y");
				resultMap.put("result", "0");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		resultMap.put("error", errorMap);
		
		return resultMap;
	}
}
