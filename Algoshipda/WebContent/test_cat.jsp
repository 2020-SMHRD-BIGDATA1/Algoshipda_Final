
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.BbsDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BbsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Full Motion by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>Full Motion</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<style>
img {
	display: inline-block;
	max-width: 359px;
	height: 300px;
}
</style>
</head>
<body id="top">

	<%
		BbsDAO bbsDao = new BbsDAO();
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<!-- Banner -->
	<!--
				To use a video as your background, set data-video to the name of your video without
				its extension (eg. images/banner). Your video must be available in both .mp4 and .webm
				formats to work correctly.
			-->
	<section id="banner" data-video="images/banner">
		<div class="inner">
			<header>
				<h1>Full Motion</h1>

			</header>
			<a href="#main" class="more">Learn More</a>
		</div>
	</section>

	<!-- Main -->
	<div id="main">
		<%
			List<BbsDTO> list = bbsDao.selectList();
		%>

		<%
			for (int i = 0; i < list.size(); i++) {
		%>

		<%
			int num = list.get(i).getBbsId();
		%>
		<div class="inner">

			<!-- Boxes -->
			<div class="thumbnails" style="width:1300px">

				<div class="box">
					<a href="board_info.jsp?num=<%=num%>" class="image fit"><img
						src="./bbsimage/<%=list.get(i).getBbsImg()%>" alt=""
						class="img-responsive" style="margin-top: 20px"></a>
					<div class="inner">
						<h3><%=list.get(i).getBbsTitle()%></h3>
						<p>Interdum amet accumsan placerat commodo ut amet aliquam
							blandit nunc tempor lobortis nunc non. Mi accumsan.</p>
						<a href="https://youtu.be/s6zR2T9vn2c" class="button fit"
							data-poptrox="youtube,800x400">Watch</a>
					</div>
				</div>

			</div>
			<%
				}
			%>
		</div>
	</div>

	<!-- Footer -->
	<footer id="footer">
		<div class="inner">
			<h2>Etiam veroeros lorem</h2>
			<p>Pellentesque eleifend malesuada efficitur. Curabitur volutpat
				dui mi, ac imperdiet dolor tincidunt nec. Ut erat lectus, dictum sit
				amet lectus a, aliquet rutrum mauris. Etiam nec lectus hendrerit,
				consectetur risus viverra, iaculis orci. Phasellus eu nibh ut mi
				luctus auctor. Donec sit amet dolor in diam feugiat venenatis.</p>

			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-envelope"><span
						class="label">Email</span></a></li>
			</ul>
			<p class="copyright">
				&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>.
				Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a
					href="http://coverr.co/">Coverr</a>.
			</p>
		</div>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.poptrox.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>