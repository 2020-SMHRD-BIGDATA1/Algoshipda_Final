
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
img {
	display: inline-block;
	width: 350px;
	max-width: 250%;
	height: auto;
}

div.card-container card-container-lg {
	width: 250px;
	max-width: 250%;
	height: 100px;
}
</style>
<body class="">
	<div id="site-border-left"></div>
	<div id="site-border-right"></div>
	<div id="site-border-top"></div>
	<div id="site-border-bottom"></div>
	<%@include file="header.jsp"%>

	<div class="row">
		<div class="col-sm-8 col-sm-offset-2 section-container-spacer">
			<div class="text-center">
				<h1 class="h2">그곳을 알려드림</h1>
				<br>
				<p>클릭해주셔서 감사합니다</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<%
				FileDAO dao = new FileDAO();
			%>

			<%
				ArrayList<KOREAPLACE> list = dao.rec_select();
			%>
			<%-- 	<img src="SimilarPicture/<%= list.get(0).getFileName()%>">  --%>
		</div>



		<div class="col-md-12">

			<div id="myCarousel" class="carousel slide projects-carousel">
				<!-- Carousel items -->
				<div class="carousel-inner">
					<div class="item active">
						<div class="row" align="center">

							<img align="left"
								src="SimilarPicture/<%=list.get(0).getKOREAIMGNAME()%>"
								alt="class="img-responsive">
							<!--추천페이지에서 클릭한 여행지의 사진  -->

							<p>
								이름: <br> <br> 주소: <br> <br> 여행지 설명: <br>
								<br> 주변 관광지: <br> <br> 웹사이트 : 찾는 곳 이름:
								<%=list.get(0).getKOREAtitle()%>
								<br> <br> 찾는 곳 주소:
								<%=list.get(0).getKOREA_addr()%>
								<br> <br> 찾는곳 간략한 설명:
								<%=list.get(0).getKOREA_text()%>
								<br> <br> 찾는곳 주변 관광지:
								<%=list.get(0).getKOREA_tour()%>
								<br> <br> 공식 웹사이트 :
								<%=list.get(0).getKOREA_URL()%>
							</p>
							<!--/row-->
						</div>
						<!--/item-->
						<div class="item">
							<div class="row"></div>
						</div>
						<!--/row-->
					</div>
					<!--/item-->
					<!--/myCarousel-->
				</div>
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