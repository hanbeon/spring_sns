<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Spring SNS</title>
	<tiles:insertAttribute name="header"/>
</head>
<body class="boxed" style="background-image: url(&quot;assets/img/pattern/brillant.png&quot;); background-repeat: repeat; padding-top: 54px;">
	<div class="bg-dark dk" id="wrap">
		<tiles:insertAttribute name="nav"/>
		<tiles:insertAttribute name="left"/>
		<tiles:insertAttribute name="right"/>
		<div id="content">
			<div class="outer">
				<div class="inner bg-light lter">
					<tiles:insertAttribute name="content"/>
				</div>
			</div>
		</div>
	</div>
</body>
</html>