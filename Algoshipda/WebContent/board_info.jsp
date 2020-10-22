<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.BbsDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BbsDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>게시판</title>

<link href="./main.3f6952e4.css" rel="stylesheet">
<style>
img {
	max-width: 500px;
	height: 400px;
}

.table_con {
	text-align: center;
	width: 100%;
	background-color: #f5f5f5;
	padding: 30px;
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

.blank {
	display: inline-block;
	vertical-align: middle;
	width: 0;
	height: 0px;
	overflow: hidden;
	background: #f00;
}

.mini_icon {
	width: 15px;
	height: 15px;
}
</style>
</head>

<body class="">

	<%@include file="header.jsp"%>

	<div id="bbsTitle">

		<div class="section-container">


			<div class="container" style="margin-left: 250px; margin-top: 100px">
				<div class="row"
					style="background-color:; margin-left: 0px; margin-right: 0px; width: 1300px;">
					<div class="col-sm-8 col-sm-offset-2 section-container-spacer"
						align="center"
						style="margin-top: 250px; width: 1300px; margin: 0%">
						<%
							String num = request.getParameter("num");
						%>
						<%
							BbsDAO bbsDao = new BbsDAO();
						bbsDao.hitUpdate(num);
						BbsDTO infoo = bbsDao.selectById(num);
						%>

						<h1 class="h1" align="center"
							style="font-size: 40px; color: gray; margin-bottom: 0px;'"><%=infoo.getBbsTitle()%></h1>

						<div style="width: 1300px; margin-top: 50px;">

							<div style="float: left; margin-left: 40px; margin-top: 20px">
								<img style="width: 25px; height: 25px"
									" src="assets/images/user.png">
							</div>
							<div style="float: left; margin-left: 15px;">
								<h3><%=infoo.getMember_id()%></h3>
							</div>

							<div style="float: left; margin-left: 30px; margin-top: 20px">
								<img class="mini_icon" src="assets/images/time.png">
							</div>
							<div style="float: left; margin-left: 15px; margin-top: 20px">
								<h4><%=infoo.getBbsDate()%></h4>
							</div>

							<div style="float: left; margin-left: 30px; margin-top: 20px">
								<img class="mini_icon" src="assets/images/eyes.png">
							</div>
							<div style="float: left; margin-left: 15px; margin-top: 20px">
								<h4><%=infoo.getBbsHit()%></h4>
							</div>


							<div style="margin-left: 950px;">
								<%
									if (info.getMember_id().equals(infoo.getMember_id())) {
								%>
								<input class="btn_ej" type="button" value="삭제"
									onClick="location.href='DeleteService?bbsTitlef=<%=infoo.getBbsTitle()%>'">
								<input class="btn_ej" type="button" value="수정"
									onClick="location.href='UpdateService?bbsId=<%=infoo.getBbsId()%>'">

								<%
									}
								%>

							</div>
						</div>
						<!-- <span class="blank"></span> -->
						<hr align="center">


					</div>



					<div class="col-md-8 col-md-offset-2 section-container-spacer"
						align="center">
						<img src="./bbsimage/<%=infoo.getBbsImg()%>">
						<h3><%=infoo.getBbsContent()%></h3>

					</div>

				</div>

			</div>

		</div>


		<center>
			<input class="btn_ej" type="button" value="목록으로"
				onClick="location.href='./board_cat.jsp'">
		</center>
		</p>



	</div>



	<%@include file="footer.jsp"%>

	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			navActivePage();
		});
		

		
	</script>

	<script type="text/javascript" src="./main.70a66962.js"></script>
	</div>
</body>

</html>