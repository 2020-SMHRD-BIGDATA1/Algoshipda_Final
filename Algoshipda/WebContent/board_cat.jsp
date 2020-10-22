
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.BbsDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BbsDAO"%>
<%@page import="java.util.ArrayList"%>
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

<title>Title page</title>

<link href="./main.3f6952e4.css" rel="stylesheet">
<style>
.card-container {
	background-color: #f5f5f5;
	padding: 1rem 1rem;
	position: relative;
	width: 80%;
	margin: 0;
	width: 350px;
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
.mini_icon{
	width: 15px;
	height: 15px;
}
</style>
</head>

<body class="">

	<%
		BbsDAO bbsDao = new BbsDAO();
	%>


	<%@include file="header.jsp"%>
	<div class="container" style="margin-top: 150px; background-color:">
		<div class="col-sm-8 col-sm-offset-2 section-container-spacer">
			<div class="text-center">
				<h1 class="h1" style="font-size: 40px; color: gray;">자유게시판</h1>

				<p>
					<input class="btn_ej" type="button" value="작성하기"
						onClick="location.href='./board_write.jsp'">

				</p>

			</div>
		</div>


	</div>
	<div class="section-container" style="margin-right: 150px;">
		<div class="container">
			<div class="row">


				<!-- Carousel items -->
				<div class="carousel-inner" style="width: 1400px;">

					<div class="row" style="width: 1400px; margin: 0px;">

						<%
							List<BbsDTO> list = bbsDao.selectList();
						%>

						<%
							for (int i = 0; i < list.size(); i++) {
						%>

						<%
							int num = list.get(i).getBbsId();
						%>


						<div class="col-sm-4"
							style="background-color: #f5f5f5; width: 400px; margin: 20px;">

							<a href="board_info.jsp?num=<%=num%>" class="image featured">
								<img src="./bbsimage/<%=list.get(i).getBbsImg()%>" alt=""
								class="img-responsive" style="margin-top: 20px">
							</a>

							<div class="card-container card-container-lg"
								style="margin-top: 0%">

								<h4 style="float: right;"><%=list.get(i).getMember_id()%></h4>
								<h3><%=list.get(i).getBbsTitle()%></h3>
								
								<div style="float: left; margin-right:15px" >
									<img class="mini_icon" src="assets/images/eyes.png">
								</div>
								<div style="float: left;"><%=list.get(i).getBbsHit()%></div>
								<div style="float: left; margin-left: 100px; margin-right: 10px">
							<img class="mini_icon" src="assets/images/time.png">
						</div>
								<div style="float: left; margin-left: ;"><%=list.get(i).getBbsDate()%></div>


							</div>
							<center>
								<input class="btn_ej" type="button" value="더보기"
									onClick="location.href='board_info.jsp?num=<%=num%>'"
									style="width: 350px; margin-bottom: 20px; margin-top:20px;'">
							</center>
						</div>
						<%
							}
						%>

					</div>
					<!--/row-->

				</div>


				<!--/myCarousel-->




			</div>
		</div>
	</div>


	<%@include file="footer.jsp"%>
	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			navActivePage();
		});
	</script>

	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

-->
	<script type="text/javascript" src="./main.70a66962.js"></script>
</body>

</html>