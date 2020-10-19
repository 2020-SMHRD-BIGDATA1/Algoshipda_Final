<%@page import="com.model.infoDTO"%>
<%@page import="com.model.infoDAO"%>
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
/* img {
	display: inline-block;
	width: 250px;
	max-width: 250%;
	height: auto;
}
 */
div.card-container card-container-lg {
	width: 250px;
	max-width: 250%;
	height: 100px;
}

.row1 {
	margin-top: 100px;
}

#pad {
	margin-right: 100px;
}
</style>
<body class="">
	<div id="site-border-left"></div>
	<div id="site-border-right"></div>
	<div id="site-border-top"></div>
	<div id="site-border-bottom"></div>
	<!-- Add your content of header -->
	<header>
		<%
			MemberDTO info = (MemberDTO) session.getAttribute("info");
		%>
		<%
			infoDAO dao2 = new infoDAO();
		%>


		<%
			FileDAO dao = new FileDAO();
		%>

		<%
			ArrayList<SimilarPicture> list = dao.rec_select();
		%>
		<%
			ArrayList<infoDTO> list2 = dao2.infomation_select();
		%>
		<nav class="navbar  navbar-fixed-top navbar-inverse">
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav ">
					<li><a href="./main.jsp" title="">Home</a></li>
					<li><a href="./board_cat.jsp" title="">Board</a></li>
					<%
						if (info == null) {
					%>
					<li><a href="./Login_form.jsp" title="">Login</a></li>
					<li><a href="./Join_form.jsp" title="">Join</a></li>
					<%
						} else {
					%>
					<li><a href="LogoutService">Logout</a></li>
					<li><a href="MyPage_form.jsp">킹겨찾기</a></li>
					<%
						}
					%>
				</ul>
			</div>
		</nav>

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
						<br> <br> <br> <br> <img id="pad" align="left"
							width="400px" height="350px"
							src="upload/<%=request.getParameter("fileName")%>">
						<p>
							찾는 곳 이름:
							<%=list.get(0).getPicturetitle()%>
							<br> <br> 찾는 곳 주소:
							<%=list.get(0).getPicture_addr()%>
							<br> <br> 찾는곳 간략한 설명:
							<%=list.get(0).getPicture_text()%>
							<br> <br> <a href="http://www.swissthemepark.com/">공식
								웹사이트 : <%=list.get(0).getPicture_web()%></a>
						</p>
					</div>
				</div>
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
				<%-- 	<img src="SimilarPicture/<%= list.get(0).getFileName()%>">  --%>
				<div class="col-md-12">
					<div id="myCarousel" class="carousel slide projects-carousel">
						<!-- Carousel items -->
						<div class="carousel-inner">
							<div class="item active">
								<div class="row1">
									<div class="col-sm-4">
										<a href="./detail.jsp" title=""> <img
											src="SimilarPicture/<%=list.get(0).getImageName()%>"
											alt="class="img-responsive">
										</a>
										<p><%=list2.get(0).getInfor_title()%></p>
										<br>
										<p><%=list2.get(0).getInfor_addr()%></p>
										<a href="./detail.jsp" title="" class="btn btn-default">정보
											보기</a>
									</div>
									<div class="col-sm-4">
										<a href="./detail.jsp" title=""> <img
											src="SimilarPicture/<%=list.get(0).getImageName()%>"
											alt="class="img-responsive">
										</a>
										<p><%=list2.get(0).getInfor_title()%></p>
										<br>
										<p><%=list2.get(0).getInfor_addr()%></p>
										<a href="./detail.jsp" title="" class="btn btn-default">정보
											보기</a>
									</div>
									<div class="col-sm-4">
										<a href="./detail.jsp" title=""> <img
											src="SimilarPicture/<%=list.get(1).getImageName()%>"
											alt="class="img-responsive">
										</a>
										<p><%=list2.get(0).getInfor_title()%></p>
										<br>
										<p><%=list2.get(0).getInfor_addr()%></p>
										<a href="./detail.jsp" title="" class="btn btn-default">정보
											보기</a>
									</div>
								</div>
							</div>
							<%-- 	<img src="SimilarPicture/<%= list.get(0).getFileName()%>">  --%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/row-->
	</div>
	<!--/item-->
	<div class="item">
		<div class="row"></div>
	</div>
	<!--/row-->
	</div>
	<!--/item-->
	</div>
	<!--/carousel-inner-->

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