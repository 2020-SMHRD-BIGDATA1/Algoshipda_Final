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
.table_con {
	text-align: center;
	width: 100%;
	background-color: #f5f5f5;
	padding: 30px;
}


</style>
</head>

<body class="">

	<%@include file="header.jsp"%>

	<div id="bbsTitle">

		<div class="section-container">

			<div class="container">
				<div class="row"
					style="background-color: ; margin-left: 0px; margin-right: 0px;">

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
							<h1 class="h1" style="font-size: 40px; color: gray;"><%=infoo.getBbsTitle()%></h1>

						</div>
					</div>





					<div class="col-md-8 col-md-offset-2 section-container-spacer">

						
						<!--  	<table class="table_con"
								style="text-align: center; border: 10px solid #f5f5f5; width: 100%; padding:30px;">
								<tbody>
									<tr>
										<td rowspan="3"><img
											src="./bbsimage/<%=infoo.getBbsImg()%>"></td>
										<th><h3 style="margin: 0%;" align="right"><%=infoo.getMember_id()%></h3></th>


									</tr>

									<tr>
										<th><h4 align="right"><%=infoo.getBbsDate()%></h4></th>
									</tr>
									<tr>
										<th><%=infoo.getBbsContent()%></th>
									</tr>
								</tbody>

							</table>-->
				


								<img src="./bbsimage/<%=infoo.getBbsImg()%>">

								<h3><%=infoo.getBbsContent()%></h3>

							</div>

						</div>

					</div>

				</div>

				<p>
					<%
						if (info.getMember_id().equals(infoo.getMember_id())) {
					%>
					<a href="DeleteService?bbsTitlef=<%=infoo.getBbsTitle()%>"
						class="btn btn-default">삭제</a> <a
						href="UpdateService?bbsId=<%=infoo.getBbsId()%>"
						class="btn btn-default">수정</a>
					<%
						}
					%>
				
				<center>
					<a href="./board_cat.jsp" class="btn btn-default">목록으로</a>
				</center>
				</p>

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
	</div>
</body>

</html>