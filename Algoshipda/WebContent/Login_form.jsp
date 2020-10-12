<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="com.model.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
<link rel="stylesheet" href="assets/css/JoinCSS.css" />
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

</style>
</head>

<body class="minimal">
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>

	<p class="tip">우리제목</p>
<div class="cont">
  <div class="form sign-in">
    <h2>어서와 여기는처음이지?</h2>
   <form method="post" action="LoginService">
    <label>
      <span>ID</span>
      <input type="text" name="member_id" value="" />
    </label>
    <label>
      <span>Password</span>
      <input type="password" name="member_pw" value=""/>
    </label>
    <button type="submit" class="btn" value="">Login</button>
    </form>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>박찬</h2>
        <p>이지</p>
      </div>
      <div class="img__text m--in">
        <h2>박찬</h2>
        <p>이지</p>
      </div>
    </div>
    <div class="form sign-up">
      <h2>여기도 글</h2>
    </div>
  </div>
</div>

</body>
</html>