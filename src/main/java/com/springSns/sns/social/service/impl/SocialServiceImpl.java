package com.springSns.sns.social.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springSns.sns.social.service.SocialService;

@Service(value="socialService")
public class SocialServiceImpl implements SocialService{

	@Resource(name="socialMapper")
	private SocialMapper socialMapper;
	
	@Override
	public Map<String, Object> selectSocialId(String socialSyncId) throws Exception {
		
		return socialMapper.selectSocialId(socialSyncId);
	}

	@Override
	public void updateTokenKey(Map<String, Object> paramsMap) throws Exception {
		
		socialMapper.updateTokenKey(paramsMap);
	}

}
