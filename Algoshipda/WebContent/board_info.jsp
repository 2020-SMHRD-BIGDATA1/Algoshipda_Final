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
	max-width: 359px;
	height: 300px;
}
</style>
</head>

<body class="">

	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>



	<div id="bbsTitle">
		<header>
			<nav class="navbar  navbar-fixed-top navbar-default">
				<div class="container">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar-collapse"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav ">
							<li><a href="./main.jsp" title="">Home</a></li>
							<li><a href="./board_cat.jsp" title="">Board</a></li>

						</ul>

					</div>
				</div>
			</nav>
		</header>

		<div class="section-container">

			<div class="container">
				<div class="row">

					<div class="col-sm-8 col-sm-offset-2 section-container-spacer">
						<%
							String num = request.getParameter("num");
						%>
						<%
							BbsDAO bbsDao = new BbsDAO();
						System.out.println(bbsDao);
						BbsDTO infoo = bbsDao.selectById(num);
						%>
						<div class="text-center">
							<h1 class="h2"><%=infoo.getBbsTitle()%></h1>

						</div>
					</div>

	
					


					<div class="col-md-8 col-md-offset-2 section-container-spacer">
						<h3 class="pull-right"><%=infoo.getMember_id()%></h3>
						<div class="row">
							<div class="col-xs-12 col-md-6">



								<img src="./bbsimage/<%=infoo.getBbsImg()%>">

								<h3><%=infoo.getBbsContent()%></h3>
								
							</div>

						</div>
						
					</div>

				</div>

				<p>
				  <% if (info.getMember_id().equals(infoo.getMember_id())) {%>
					<a href = "DeleteService?bbsTitlef=<%=infoo.getBbsTitle()%>" class="btn btn-default" >삭제</a>
							 <a href="UpdateService?bbsId=<%=infoo.getBbsId() %>" class="btn btn-default">수정</a>
							<% } %>										    
					
					 					 
					<center><a href="./board_cat.jsp" class="btn btn-default">목록으로</a></center>
				</p>

			</div>

		</div>


		<footer class="footer-container text-center">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<p>
							© UNTITLED | Website created with <a
								href="http://www.mashup-template.com/"
								title="Create website with free html template">Mashup
								Template</a>/<a href="https://www.unsplash.com/"
								title="Beautiful Free Images">Unsplash</a>
						</p>
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
	</div>
</body>

</html>