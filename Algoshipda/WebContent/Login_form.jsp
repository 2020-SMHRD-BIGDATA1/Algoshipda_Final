<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.model.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width,initial-scale=1" name="viewport">
<meta content="description" name="description">
<meta name="google" content="notranslate" />
<meta content="Mashup templates have been developped by Orson.io team"
	name="author">

<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">

<link rel="apple-touch-icon" sizes="180x180"
	href="./assets/apple-icon-180x180.png">
<link href="./assets/favicon.ico" rel="icon">
<link rel="stylesheet" href="assets/css/JoinCSS.css?ver=1" />
<title>Title page</title>

<link href="./main.3f6952e4.css" rel="stylesheet">
<style>
#pp {
	margin-left: 121px;
	margin-top: 1px;
	width: 84px;
	height: 45px;
}

.nav navbar-nav {
	
}

.btn_ej {
	width: 100px;
	background-color: gray;
	border: none;
	color: #fff;
	padding: 10px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px;
	cursor: pointer;
	text-decoration: none
}

.col-lg-4 {
	background-color: #f5f5f5;
	padding: 50px;
	background-color: rgba(255, 255, 255, 0.3);
	margin-left: 390px;
}
</style>
</head>

<body class="minimal"
	style="background-image: url('assets/images/background.PNG'); background-repeat: no-repeat; background-size: cover;">
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>

	<div
		style="width: 100%; text-align: center; margin-top: 50px; margin-bottom: 50px;">
		<a href="main.jsp"><img src="assets/images/algoicon.png"
			style="width: 260px; height: 130px;"></a>
	</div>

	<div class="container">

		<div class="col-lg-4">
			<!-- 점보트론 -->
			<div class="jumbotron" style="padding-top: 20px;">
				<!-- 로그인 정보를 숨기면서 전송post -->
				<form method="post" action="LoginService">
					<h3
						style="text-align: center; font-family: 'Jalnan'; color: white; font-size: 50px;">LOGIN</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="member_id" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="member_pw" maxlength="20">
					</div>
			</div>
			<center>
				<input type="submit" value="로그인" class="btn_ej"
					style="font-family: 'Jalnan';"> <input type="button"
					value="회원가입" " class="btn_ej" style="font-family: 'Jalnan';"
					onclick="location.href='Join_form.jsp'">
				</form>
			</center>
		</div>
	</div>
	</div>


</body>

</html>