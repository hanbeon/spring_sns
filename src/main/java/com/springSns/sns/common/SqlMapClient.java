package com.springSns.sns.common;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * @Class       : SqlMapClient.java
 * @Description : FormValidator에서 중복 체크 등 설정 .
 *
 * @Modification Infomation
 * @
 * @  수정일      수정자              수정내용
 * @ ----------  ---------   -------------------------------
 * @ 2018. 1. 22.   JONG   최초생성
 * 
 * @author      : JONG
 * @since 2018. 1. 22.
 */
public class SqlMapClient {
	
	private SqlSession session;
	
	public SqlSession getSqlSession(){
		
		try{
			
			String resource = "/config/sqlMap/client-mapper-config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			session = sqlMapper.openSession();
		}catch(IOException e){
			
			e.printStackTrace();
		}
		return session;
	}

/*	private static SqlSession session;
	
	static {
		
		try{
			
			String resource = "/config/sqlMap/client-mapper-config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			
			session = sqlMapper.openSession();
			
		}catch(IOException e){
			
			e.printStackTrace();
		}
		
	}
	
	public static SqlSession getSqlSession() {
		
		return session;
	}*/
	

}
