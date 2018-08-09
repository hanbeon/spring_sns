package com.springSns.sns.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;

public class CommonUtil {
	
	/**
	 * @Comment   데이터 SHA-256 암호화
	 * @param String value
	 * @return
	 * @author    JONG
	 * @since     2018. 1. 21.
	 */
	public static String setEncryptSHA256(String value) {
		
		try{
			
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			digest.update(value.getBytes());
			
			byte byteData[] = digest.digest();
			
			StringBuffer hexString = new StringBuffer();
			
			for ( int i = 0; i < byteData.length; i++ ) {
				
				String hex = Integer.toHexString(0xff & byteData[i]);
				
				if ( hex.length() == 1 ) {
					
					hexString.append('0');
				}
				
				hexString.append(hex);
			}
			
			return hexString.toString();
			
		}catch(NoSuchAlgorithmException e){
			
			throw new RuntimeException();
		}
	}
	
	
	public static String makeChatRoomId() {
		
		String result = "chat"+UUID.randomUUID().toString().replaceAll("-", "").toUpperCase().substring(0, 11);
		return result;
	}
	
}
