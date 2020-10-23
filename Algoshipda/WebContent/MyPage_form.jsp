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
<link rel="stylesheet" href="assets/css/JoinCSS.css" />
<title>Title page</title>

<link href="./main.3f6952e4.css" rel="stylesheet">
<script src="jquery-3.5.1.min.js"></script>

<style>
#pp {
	margin-left: 121px;
	margin-top: 1px;
	width: 84px;
	height: 45px;
}

.nav navbar-nav {
	
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
	font-size:18px;
	font-family: 'Jalnan'
}
th{
	font-size:15px;
}
</style>
</head>

<body
	style="background-image: url('assets/images/background.PNG'); background-repeat: no-repeat; background-size: cover;">
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-left">
				<div class="col-sm-3"></div>
				<h1 class="h1"
					style="font-size: 30px; color: white; margin-top: 100px; text-align: center; font-family: 'Jalnan';">Profile</h1>
				<div class="col-sm-6"
					style="margin-top: 50px; background-color: white; background-color: rgba(255, 255, 255, 0.3); padding-bottom: 20px;margin-left:290px;">

					<br> <br>


					<table class="table table-boardered" style="color: white; ">
						<th>ID</th>
						<td><%=info.getMember_id()%></td>
						</tr>
						

						<tr>
							<th>ADDR</th>
							<td><%=info.getMember_addr()%></td>
						</tr>
						<tr>
							<th>TEL</th>
							<td><%=info.getMember_tel()%></td>
						</tr>
					</table>
					<form action="main.jsp" method="post" accept-charset="utf-8"
						style="color: white;">
						<tr>
							<td style="color: white;" colspan='2' align='center'>
								<center>
									<input class="btn_ej" type="submit"  style="font-family: 'Jalnan'; font-size:20px;" value="돌아가기">
								</center>
							</td>
						</tr>
					</form>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<div class="hihi"
		style="background-color: white; background-color: rgba(255, 255, 255, 0.2);">
		<hr style="color: white; width: 100%;">
		<h2 style="color: white;font-family: 'Jalnan';">MY LIST</h2>

		<div class="jjim">
			<br> <img src="KOREAPLACE/쁘띠프랑스.jpg" width="280px"
				height="250px"
				style="margin-left: 650px; border-radius: 80%; overflow: hidden;">
			<img src="KOREAPLACE/인천월미도테마파크.jpg" width="280px" height="250px"
				style="margin-left: 175px; border-radius: 80%; overflow: hidden;">
				<br> 
				<img src="KOREAPLACE/쁘띠프랑스.jpg" width="280px"
				height="250px"
				style="margin-left: 177px; border-radius: 80%; overflow: hidden;">
		</div>
		
		<br> <br> <br> <br> <br>
	</div>

	<script type="text/javascript">
		
	</script>
</body>
</html>