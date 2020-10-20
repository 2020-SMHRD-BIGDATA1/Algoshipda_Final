<%@page import="com.model.MemberDTO"%>
<header>
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<nav class="navbar  navbar-fixed-top navbar-inverse">
		<div class="container" style="margin: 0;">
			<div
				style="width: 300px; height: 88px; float: left; margin-left: 50px; margin-top: 15px;">
				<a href="main.jsp"><img src="assets/images/logo.png"
					style="width: 250px; height: 77px;"></a>
			</div>
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
			<div class="collapse navbar-collapse" id="navbar-collapse"style="padding-top: 40px;">

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
					<li><a href="MyPage_form.jsp">MyPage</a></li>

					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
</header>