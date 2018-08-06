package com.springSns.sns.main.service;

import java.util.List;

public interface MainService {
	
	public int postProcess(PostVO postVO, String action) throws Exception;
	
	public List<PostVO> getSnsPostList() throws Exception;

}
