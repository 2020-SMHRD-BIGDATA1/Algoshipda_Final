<%@page import="com.model.MemberDTO"%>

<style>
li {
	 font-family: 'Jalnan';
}
</style>
<header>
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<nav class="navbar  navbar-fixed-top navbar-inverse"
		style='background-color:'>
		<div class="container" style="margin: 0;">
			<div style="width: 300px; height: 200px; float: left;">
				<a href="main.jsp"><img src="assets/images/icon25.png"
					style="width: 300px; height: 150px;"></a>
			</div>
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
			<div class="collapse navbar-collapse" id="navbar-collapse"
				style="padding-top: 40px;">

				<ul class="nav navbar-nav ">
					<li><a href="./main.jsp">Home</a></li>
					<li> <a href="./board_cat.jsp" title="">Board</a></li>
					<%
						if (info == null) {
					%>
					<li><a href="./Login_form.jsp" title="">Login</a></li>
					<li><a href="./Join_form.jsp" title="">Join</a></li>
					<%
						} else {
					%>
					<li><a href="LogoutService">Logout</a></li>
					<li><a href="MyPage_form.jsp">MyPage</a></li>

					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
</header>