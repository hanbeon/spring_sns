package com.springSns.sns.main.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springSns.sns.main.service.PostVO;

@Mapper
public interface MainMapper {

	public int insertPost(PostVO postVO) throws Exception;
	
	public int updatePost(PostVO postVO) throws Exception;
	
	public List<PostVO> getSnsPostList() throws Exception;
}
