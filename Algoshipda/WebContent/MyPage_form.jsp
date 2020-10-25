<%@page import="java.util.ArrayList"%>
<%@page import="com.model.jjimDAO"%>
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="com.model.KOREAPLACE"%>
<%@page import="com.model.FileDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="assets/css/JoinCSS.css" />
<title>Title page</title>

<link href="./main.3f6952e4.css" rel="stylesheet">
<script src="jquery-3.5.1.min.js"></script>

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
.table>tbody>tr>th{
	width: 54%;
}
</style>
</head>



<%
	FileDAO dao = new FileDAO();
String titledetail = request.getParameter("titledetail");

KOREAPLACE korea_detail = dao.searchKorea(titledetail);

jjimDAO jdao = new jjimDAO();
System.out.print(jdao.jjimlist().get(0) + "꾸");
%>
<body
	style="background-image: url('assets/images/back_ground.PNG'); background-repeat: no-repeat; background-size: cover;padding:0px;">
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 ">
				<div class="col-sm-3"></div>
				<h1 class="h1"
					style="font-size: 45px; color: white; margin-top: 150px; text-align: center;font-family:'Jalnan'">Profile</h1>
				<div class="col-sm-6"
					style="width:500px;margin-top: 50px; text-aligncenter; background-color: white; background-color: rgba(255, 255, 255, 0.3); padding-bottom: 20px; margin-left: 320px;">

					<br> <br>


					<table class="table table-boardered" style="color: white; width: 470px;">
						<th style="font-family:'Jalnan'">ID</th>
						<td style="font-family:'Jalnan'; font-size: 15px;"><%=info.getMember_id()%></td>
						</tr>					
						</tr>

						<tr style="font-family:'Jalnan'">
							<th>ADDR</th>
							<td style="font-family:'Jalnan'; font-size: 15px;"><%=info.getMember_addr()%></td>
						</tr>
						<tr style="font-family:'Jalnan'">
							<th>TEL</th>
							<td style="font-family:'Jalnan'; font-size: 15px;"><%=info.getMember_tel()%></td>
						</tr>
					</table>
					<form action="main.jsp" method="post" accept-charset="utf-8"
						style="color: white;">
						<tr>
							<td style="color: white;" colspan='2' align='center'>
								<center>
									<input class="btn_ej" type="submit" style="font-family:'Jalnan';" value="돌아가기">
								</center>
							</td>
						</tr>
					</form>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="hihi"
		style="background-color: white; background-color: rgba(255, 255, 255, 0.2);height: 600px;">
		<hr style="color: white; width: 100%;">
		<h2 style="color: white; font-size: 40px; font-family:'Jalnan'">MY LIST</h2>
		<br> <br> <br>
		<!-- 국내 이미지 for문으로 BOOKMARK서비스로 폼액션 주기!  -->
		<%
			for (int i = 0; i < jdao.jjimlist().size(); i++) {
			System.out.print(jdao.jjimlist().get(i) + "뭐냐!!\n");
		%>
		<div class="col-sm-4" style="width: 400px; margin: 20px; ">
			<a href="javascript:return false;"
				onclick="location.href='jjim_detail.jsp?jjimdetail=<%=jdao.jjimlist().get(i)%>';"><img
				src="KOREAPLACE/<%=jdao.jjimlist().get(i) + ".jpg"%>" width="280px"
				height="250px"
				style="cursor: pointer; margin-left: 110px; border-radius: 80%; overflow: hidden;">
				<h4 style=" font-family: 'Jalnan'; margin-top:20px;margin-bottom:5px; font-size:20px;text-align: center; 
				margin-left: 140px; color: white;">
				<%=jdao.jjimlist().get(i) %>
				</h4>
				</a>


			<br> <br> <br> <br> <br>
		</div>

		<%
			}
		%>

	</div>



	<script type="text/javascript">
		
	</script>
</body>
</html>