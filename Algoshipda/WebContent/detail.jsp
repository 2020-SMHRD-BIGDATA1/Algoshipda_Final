
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="com.model.KOREAPLACE"%>
<%@page import="com.model.FileDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.model.FileDAO"%>
<%@page import="com.model.MemberDTO"%>

<!DOCTYPE html>
<html lang="en">

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

<title>유사 여행지 추천</title>

<link href="./main.3f6952e4.css" rel="stylesheet">
</head>
<style>
/* img {
	display: inline-block;
	width: 350px;
	max-width: 250%;
	height: auto;
} */
div.card-container card-container-lg {
	width: 250px;
	max-width: 250%;
	height: 100px;
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
td{
	font-size:20px;
	padding:6px;
}
</style>
<body class=""
	style="background-image: url('assets/images/background.PNG'); background-repeat: no-repeat; background-size: cover;">

	<%@include file="header.jsp"%>

	<%
		FileDAO dao = new FileDAO();
	%>

	<%
		String titledetail = request.getParameter("titledetail");

	KOREAPLACE korea_detail = dao.searchKorea(titledetail);
	System.out.print(korea_detail.getKOREAtitle() + "뭘까");
	// dao를 통해 분석한 외국 정보 dto를 받아오는 부분

	// dao를 통해 분석한 한국 정보 dto를 받아오는 부분
	%>
	<div class="row"
		style="margin-top: 250px; width: 1300px; margin: 0%; margin-left: 300px;">
		<div class="col-sm-8 col-sm-offset-2 section-container-spacer">
			<div class="text-center">
				<h1 class="h1"
					style="font-size: 40px; font-family:'Jalnan'; color: white; margin-top: 170px;"><%=korea_detail.getKOREAtitle()%></h1>
				<br> <br>
			</div>
		</div>
	</div>
	<div class="container"
		style="background-color: white; background-color: rgba(255, 255, 255, 0.3); padding-bottom: 50px;">
		<div class="row">




			<%-- 	<img src="SimilarPicture/<%= list.get(0).getFileName()%>">  --%>
		</div>



		<div class="col-md-12">

			<div id="myCarousel" class="carousel slide projects-carousel">
				<!-- Carousel items -->
				<div class="carousel-inner">
					<div class="item active">
						<div class="row" align="center">
							<img align="left"
								style="margin-top: 50px; margin-left: 260px; width: 600px; height: 400px;"
								src="KOREAPLACE/<%=korea_detail.getKOREAIMGNAME()%>" alt=""
								class="img-responsive">
							<!--추천페이지에서 클릭한 여행지의 사진  -->
							<div style="display: inline-block;">
								<!-- <p
									style="color: white; margin-top: 110px; font-family:'Jalnan'; margin-right: 100px; font-size: 18px; margin-left: 110px;"> -->
								
								<table style="color: white; font-family: 'Jalnan';width: 1000px; margin-top:30px;">
								<tr >
								<td colspan="2" style="font-size:22px;">
										<%=korea_detail.getKOREA_text()%>														
								</td>
								</tr>								
								
								<tr>
								<td colspan="2">
								<br><br>
								</td>
								</tr>
								<td>Location</td>
								<td>
								:&nbsp;&nbsp;<%=korea_detail.getKOREA_addr()%>
								</td>							
								</tr>
								<tr>
								<td>Nearby tourist</td>
								<td>:&nbsp;&nbsp;<%=korea_detail.getKOREA_tour()%></td>
								</tr>
								<tr>
								<td>Web site</td>
								<td>:&nbsp;&nbsp;<%=korea_detail.getKOREA_URL()%></td>
								</tr>
								</table>
								
								
							</div>
							<!--/row-->
						</div>
						<!--/item-->
						<div class="item">
							<div class="row"></div>
							<form action="BookMarkService" method="post"
								accept-charset="utf-8">
								<button class="btn_ej" name='bookmark' type='submit'
									value=<%=korea_detail.getKOREAtitle()%>
									style="font-family:'Jalnan'; font-size:20px;margin-left: 500px; margin-top: 100px;"> 찜</button>
							</form>
						</div>
						<!--/row-->
					</div>
					<!--/item-->
					<!--/myCarousel-->
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>

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