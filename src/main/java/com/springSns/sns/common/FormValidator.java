package com.springSns.sns.common;

import java.util.regex.Pattern;

import org.apache.commons.validator.Field;
import org.apache.commons.validator.ValidatorAction;
import org.apache.ibatis.session.SqlSession;
import org.springframework.validation.Errors;
import org.springmodules.validation.commons.FieldChecks;

import com.springSns.sns.login.service.LoginVO;

/**
 * @Class       : FormValidator.java
 * @Description : Form Validation 체크
 *
 * @Modification Infomation
 * @
 * @  수정일                    수정자                수정내용
 * @ ----------  ---------   -------------------------------
 * @ 2018. 1. 20.   JONG        최초생성
 * 
 * @author      : JONG
 * @since 2018. 1. 20.
 */

@SuppressWarnings("serial")

public class FormValidator extends FieldChecks{
	
	/**
	 * @Comment 한글 입력 시 자음 모음 불가.
	 * @param bean
	 * @param va
	 * @param field
	 * @param errors
	 * @return
	 * @author    JONG
	 * @since     2018. 1. 21.
	 */
	public static boolean hangul(Object bean, ValidatorAction va,
			Field field, Errors errors){
		
		String fieldValue = FieldChecks.extractValue(bean, field);
		String regex = "^[가-힣]+$";
		
		if (Pattern.matches(regex, fieldValue)){
			
			return true;
		}else{
			
			FieldChecks.rejectValue(errors, field, va);
			return false;
		}
		
	}
	/**
	 * @Comment   Field 값 숫자만 허용
	 * @param bean
	 * @param va
	 * @param field
	 * @param errors
	 * @return
	 * @author    JONG
	 * @since     2018. 1. 21.
	 */
	public static boolean onlyNumber(Object bean, ValidatorAction va,
			Field field, Errors errors){
		
		String fieldValue = FieldChecks.extractValue(bean, field);
		String regex = "^[0-9]*$";
		
		if (Pattern.matches(regex, fieldValue)){
			
			return true;
		} else {
		
			FieldChecks.rejectValue(errors, field, va);
			return false;
		}
	}
	
	/**
	 * @Comment   password 숫자, 영문자, 특수문자(!@$~) 포함 여부
	 * @param bean
	 * @param va
	 * @param field
	 * @param errors
	 * @return
	 * @author    JONG
	 * @since     2018. 1. 21.
	 */
	public static boolean passwordCheck(Object bean, ValidatorAction va,
			Field field, Errors errors){
		
		String fiedlValue = FieldChecks.extractValue(bean, field);
		String regex = "([a-zA-Z0-9].*[!,@,$,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])";
		
		if (Pattern.matches(regex, fiedlValue)){
			
			return true;
		}else{
			
			FieldChecks.rejectValue(errors, field, va);
			return false;
		}
	}
	
	/**
	 * @Comment   password와 repassword 값 동일한지 여부 판별
	 * @param bean
	 * @param va
	 * @param field
	 * @param errors
	 * @return
	 * @author    JONG
	 * @since     2018. 1. 21.
	 */
	public static boolean rePasswordCheck(Object bean, ValidatorAction va,
			Field field, Errors errors){
		
		String filedValue = FieldChecks.extractValue(bean, field);
		System.out.println("FileVlaue=" + filedValue);
		String password = ((LoginVO)bean).getPassword();
		System.out.println("password=" + password);
		if ( password.equals(filedValue) ){
			
			return true;
		}else{
			
			FieldChecks.rejectValue(errors, field, va);
			return false;
		}
	}
	
	public boolean emailOverlap(Object bean, ValidatorAction va,
			Field field, Errors errors){
		
		String fieldValue = FieldChecks.extractValue(bean, field);
		
		int overlapCnt = 0;
		try{
			
			overlapCnt = validatorOverlap("formValidator.emailOverlap", fieldValue);
			
			if ( overlapCnt>0){
				
				FieldChecks.rejectValue(errors, field, va);
				
				return false;
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return true;
		
	}

	/**
	 * @Comment   중복 체크
	 * @param String sqlName
	 * @param String value
	 * @return
	 * @author    JONG
	 * @since     2018. 1. 22.
	 */
	public int validatorOverlap(String sqlName, String value){
		
		SqlMapClient client = new SqlMapClient();
		SqlSession session = client.getSqlSession();
		int resultCnt = 0;
		
		resultCnt = session.selectOne(sqlName, value);
		session.close();
		
		return resultCnt;
	}
}
