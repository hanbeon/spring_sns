<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="form-signin">
	<div class="text-center">
		<img src="resources/assets/img/logo.png" alt="Metis Logo">
	</div>
	<hr>
	<div class="tab-content">
		<div id="login" class="tab-pane active">
			<!-- Login :: Start -->
			<form action="loginProcess" method="POST">
				<p class="text-muted text-center">
					Enter your username and password
				</p>
				<input type="text" placeholder="Username" id="loginid" name="loginid" class="form-control top">
				<input type="password" placeholder="Password" id="loginpw" name="loginpw" class="form-control bottom">
				<div class="checkbox">
					<label>
						<input type="checkbox"> Remember Me
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			</form>
			<!-- Login :: End -->
			
			<!-- 네이버아이디로로그인 버튼 노출 영역 -->
			<div id="naver_id_login"></div>
			<!-- //네이버아이디로로그인 버튼 노출 영역 -->
<!-- 			<script type="text/javascript">
				var naver_id_login = new naver_id_login("<c:out value="${naverApi}"/>", location.origin+"/sns/callbackNaverLogin");
				var state = naver_id_login.getUniqState();
				naver_id_login.setButton("white", 2,40);
				naver_id_login.setDomain(location.origin);
				naver_id_login.setState(state);
				naver_id_login.setPopup();
				naver_id_login.init_naver_id_login();
				console.log( JSON.stringify(naver_id_login) );
			</script> -->
			<form id="socialFrm" name="socialFrm" method="post"></form>
		</div>
		<div id="forgot" class="tab-pane">
			<form action="index.html">
				<p class="text-muted text-center">Enter your valid e-mail</p>
				<input type="email" placeholder="mail@domain.com" class="form-control">
				<br>
				<button class="btn btn-lg btn-danger btn-block" type="submit">Recover Password</button>
			</form>
		</div>
		<div id="signup" class="tab-pane">
			<form:form action="member" method="post" commandName="loginVO">
				<form:input  type="text"     name="firstName"  path="firstName"  class="form-control top"    placeholder="성"/>
				<form:errors path="firstName" cssStyle="color:red"/>
				
				<form:input  type="text"     name="lastName"   path="lastName"   class="form-control top"    placeholder="이름"/>
				<form:errors path="lastName" cssStyle="color:red"/>
				
				<form:input  type="text"     name="email"      path="email"      class="form-control middle" placeholder="mail@xxx.xxx"/>
				<form:errors path="email" cssStyle="color:red"/>
				
				<form:input  type="password" name="password"   path="password"   class="form-control middle" placeholder="password"/>
				<form:errors path="password" cssStyle="color:red"/>
				
				<form:input  type="password" name="rePassword" path="rePassword" class="form-control bottom" placeholder="rePassword"/>
				<form:errors path="rePassword" cssStyle="color:red"/>
				
				<form:button class="btn btn-lg btn-success btn-block" type="submit">Register</form:button>
			</form:form>
			
		</div>
	</div>
	<hr>
	<div class="text-center">
		<ul class="list-inline">
			<li><a id="loginTab" class="text-muted" href="#login" data-toggle="tab">Login</a></li>
			<li><a id="forgotTab" class="text-muted" href="#forgot" data-toggle="tab">Forgot Password</a></li>
			<li><a id="signTab" class="text-muted" href="#signup" data-toggle="tab">Signup</a></li>
		</ul>
	</div>
</div>

<script type="text/javascript">
	
	(function($) {
		$(document).ready(function() {
			
			if( func.param !="" ) {
				
				$(func.param).click();
			}
			
			$('.list-inline li > a').click(function() {
				
				func.changeTap(this);
			});
			
		});
	})(jQuery);
	
	/*
		Login, Forgot Password, SignUp 탭 클릭 이벤트.
	*/
	var func = {
			
			param : "#"+"<c:out value="${tag}"/>",
			
			changeTap : function (id) {
				
				var activeForm = $(id).attr('href') + ' > form';
				
				$(activeForm).addClass('animated fadeIn');
				//set timer to 1 seconds, after that, unload the animate animation
				setTimeout(function() {
					$(activeForm).removeClass('animated fadeIn');
				}, 1000);
			}
		}
	
	
</script>
