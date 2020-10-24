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

				<ul class="nav navbar-nav " style="margin-top:15px">
					<li><a href="./main.jsp" style="font-size:20px">Home</a></li>
					<li> <a href="./board_cat.jsp" style="font-size:20px">Board</a></li>
					<%
						if (info == null) {
					%>
					<li><a href="./Login_form.jsp" style="font-size:20px">Login</a></li>
					<li><a href="./Join_form.jsp" style="font-size:20px" >Join</a></li>
					<%
						} else {
					%>
					<li><a href="LogoutService" style="font-size:20px">Logout</a></li>
					<li><a href="MyPage_form.jsp" style="font-size:20px">MyPage</a></li>

					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
</header>