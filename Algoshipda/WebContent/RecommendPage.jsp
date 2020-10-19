<%@page import="com.model.SimilarPicture"%>
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
	width: 250px;
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
	<!-- Add your content of header -->
	<header>



		<nav class="navbar  navbar-fixed-top navbar-default">
			<div class="container">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse"
					aria-expanded="false">
					<span class="sr-only"> </span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
		</nav>
	</header>

	<div class="section-container">
		<div class="container">
			<div class="row">

				<div class="col-sm-8 col-sm-offset-2 section-container-spacer">
					<div class="text-center">
						<h1 class="h2">여기가 어디인가유</h1>
						<br> <img src="upload/<%=request.getParameter("fileName")%>">
						<p>이곳은 마이 스위트홈</p>
					</div>
				</div>



				<%
					FileDAO dao = new FileDAO();
				%>

				<%
					ArrayList<SimilarPicture> list = dao.rec_select();
				%>
				<%-- 	<img src="SimilarPicture/<%= list.get(0).getFileName()%>">  --%>


				<div class="col-md-12">

					<div id="myCarousel" class="carousel slide projects-carousel">
						<!-- Carousel items -->
						<div class="carousel-inner">
							<div class="item active">
								<div class="row">
									<div class="col-sm-4">
										<a href="./work.html" title=""
											class="black-image-project-hover"> <img
											src="SimilarPicture/<%=list.get(0).getFileName()%>"
											alt=" class="img-responsive">
										</a>

										<div style="width: 150px; height: 120px;"
											class="card-container card-container-lg">
											<h4>1/6</h4>
											<h3>부적합</h3>
											<p>디스코보리</p>
											<a href="./work.html" title="" class="btn btn-default">여기야</a>
										</div>
									</div>
									<div class="col-sm-4">
										<a href="./work.html" title=""
											class="black-image-project-hover"> <img
											src="SimilarPicture/<%=list.get(0).getFileName()%>"
											alt=" class="img-responsive">
										</a>
										<div class="card-container card-container-lg">
											<h4>002/006</h4>
											<h3>Nulla scelerisque</h3>
											<p>Proin pharetra metus id iaculis dignissim. In aliquet
												lorem ut ex ullamcorper.</p>
											<a href="./work.html" title="" class="btn btn-default">Discover</a>
										</div>
									</div>
									<div class="col-sm-4">
										<a href="./work.html" title=""
											class="black-image-project-hover"> <img
											src="SimilarPicture/<%=list.get(0).getFileName()%>"
											alt=" class="img-responsive">
										</a>
										<div class="card-container card-container-lg">
											<h4>003/006</h4>
											<h3>Vivamus vestibulum</h3>
											<p>Fusce sed hendrerit augue, a rhoncus velit. In non
												lorem mattis, tempor sem sit amet.</p>
											<a href="./work.html" title="" class="btn btn-default">Discover</a>
										</div>
									</div>

								</div>
								<!--/row-->
							</div>
							<!--/item-->
							<div class="item">
								<div class="row">
									<div class="col-sm-4">
										<a href="./work.html" class="black-image-project-hover"> <img
											src="./assets/images/work02-hover.jpg" alt="Image"
											class="img-responsive">
										</a>
										<div class="card-container">
											<h4>004/006</h4>
											<h3>Nulla scelerisque</h3>
											<p>Proin pharetra metus id iaculis dignissim. In aliquet
												lorem ut ex ullamcorper.</p>
											<a href="./work.html" class="btn btn-default">Discover</a>
										</div>
									</div>
									<div class="col-sm-4">
										<a href="./work.html" class="black-image-project-hover"> <img
											src="./assets/images/work01-hover.jpg" alt="Image"
											class="img-responsive">
										</a>
										<div class="card-container">
											<h4>005/006</h4>
											<h3>Fringilla sit amet</h3>
											<p>Nulla facilisi. Vivamus vestibulum, elit in
												scelerisque ultricies.</p>
											<a href="./work.html" class="btn btn-default">Discover</a>
										</div>
									</div>

									<div class="col-sm-4">
										<a href="./work.html" class="black-image-project-hover"> <img
											src="./assets/images/work03-hover.jpg" alt="Image"
											class="img-responsive">
										</a>
										<div class="card-container">
											<h4>006/006</h4>
											<h3>Vivamus vestibulum</h3>
											<p>Fusce sed hendrerit augue, a rhoncus velit. In non
												lorem mattis, tempor sem sit amet.</p>
											<a href="./work.html" class="btn btn-default">Discover</a>
										</div>
									</div>

								</div>
								<!--/row-->
							</div>

							<!--/item-->
						</div>
						<!--/carousel-inner-->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev">‹</a> <a class="right carousel-control"
							href="#myCarousel" data-slide="next">›</a>
					</div>



					<!--/myCarousel-->
				</div>
			</div>
		</div>
	</div>


	<footer class="footer-container text-center">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<p>여기에도 뭘 쓸깐</p>
				</div>
			</div>
		</div>
	</footer>

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