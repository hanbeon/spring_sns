package com.springSns.sns.social.service.impl;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SocialMapper {
	
	public Map<String, Object> selectSocialId(String socialSyncId) throws Exception;
	
	public void updateTokenKey(Map<String, Object> paramsMap) throws Exception;

}
