<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script> -->
	<script src="resources/assets/lib/jquery/jquery.js"></script>
</head>
<body>
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("<c:out value="${naverApi.naverApiId}"/>", "");
		
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			
			var userInfo = {
				socialSyncId       : naver_id_login.getProfileData('email'),
				socialName         : naver_id_login.getProfileData('nickname'),
				socialSyncTokenKey : naver_id_login.oauthParams.access_token,
				url : "socialIdCheck"
			}
			
			ajaxFn.userInfoInit(userInfo);
			
		}
		
		var ajaxFn = {
				
				userInfoInit : function(options){
					
					var that = this;
					
					$.ajax({
						
						type    : "post",
						url     : options.url,
						data    : {
									"socialSyncId"       : options.socialSyncId,
									"socialSyncTokenKey" : options.socialSyncTokenKey
								  },
						success : function(data) {
							
							var openerFrm = window.opener.document.getElementById("socialFrm");
							
							openerFrm.innerHTML = "<input type='hidden' id='socialSyncId' name='socialSyncId' value='"+options.socialSyncId+"'>";
							openerFrm.innerHTML = "<input type='hidden' id='isSocial'     name='isSocial'     value='true'>";
							openerFrm.method = "post";
							
							if (data == "noExist") {
								
								openerFrm.innerHTML = "<input type='hidden' id='socialName' name='socialName' value='"+options.socialName+"'";
								openerFrm.innerHTML = "<input type='hidden' id='chId'       name='chId'       value='naver'";
								
								openerFrm.action = "socialJoinView";
								
							}else{
								
								openerFrm.action = "actionLogin";
							}
							
							openerFrm.submit();
							
						},
						error : function(){
							alert('error');
						}
					})
				}
		}
	</script>
</body>
</html>