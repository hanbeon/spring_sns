package com.springSns.sns.main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springSns.sns.main.service.MainService;
import com.springSns.sns.main.service.PostVO;

@Service(value="mainService")
public class MainServiceImpl implements MainService{

	@Resource(name="mainMapper")
	private MainMapper mainMapper;
	
	@Override
	public int postProcess(PostVO postVO, String action) throws Exception {
		int resultCnt = 0;
		if ( "insert".equals(action) ){
			
			resultCnt = mainMapper.insertPost(postVO);
		}else if("update".equals(action)){
			
		}
		return resultCnt;
	}

	@Override
	public List<PostVO> getSnsPostList() throws Exception {
		
		return mainMapper.getSnsPostList();
	}

}
