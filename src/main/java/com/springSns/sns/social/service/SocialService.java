package com.springSns.sns.social.service;

import java.util.Map;

public interface SocialService {

	public Map<String, Object> selectSocialId(String socialSyncId) throws Exception;
	
	public void updateTokenKey(Map<String, Object> paramsMap) throws Exception;
}
