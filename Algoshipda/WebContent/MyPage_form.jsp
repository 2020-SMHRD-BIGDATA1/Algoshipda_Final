<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
</style>
</head>

<body
	style="background-image: url('assets/images/back_ground.PNG'); background-repeat: no-repeat; background-size: cover;">
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-left">
				<div class="col-sm-3"></div>
				<h1 class="h1"
					style="font-size: 30px; color: white; margin-top: 100px; text-align: center;">Profile</h1>
				<div class="col-sm-6"
					style="margin-top: 50px; background-color: white; background-color: rgba(255, 255, 255, 0.3); padding-bottom: 20px;margin-left:290px;">

					<br> <br>


					<table class="table table-boardered" style="color: white; ">
						<th>ID</th>
						<td><input type="text" class="form-control"
							name="member_id" placeholder="<%=info.getMember_id()%>"readonly/></td>
						</tr>
						<th>Password</th>
						<td><input type="password" class="form-control"
							name="member_pw" placeholder="<%=info.getMember_pw()%>"readonly/></td>
						</tr>

						<tr>
							<th>Address</th>
							<td><input type="text" class="form-control"
								name="member_addr" placeholder="<%=info.getMember_addr()%>"readonly/></td>
						</tr>
						<tr>
							<th>Telephone</th>
							<td><input type="tel" class="form-control" name="member_tel"
								placeholder="<%=info.getMember_tel()%>"readonly/></td>
						</tr>
					</table>
					<form action="main.jsp" method="post" accept-charset="utf-8"
						style="color: white;">
						<tr>
							<td style="color: white;" colspan='2' align='center'>
								<center>
									<input class="btn_ej" type="submit" value="���ư���">
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
		<h2 style="color: white;">MY LIST</h2>
		<br>
		<br>
		<br><!-- ���� �̹��� for������ BOOKMARK���񽺷� ���׼� �ֱ�!  -->
				<img src="KOREAPLACE/�ڶ�������.jpg" width="280px"
				height="250px"
				style="margin-left: 110px; border-radius: 80%; overflow: hidden;">
				<img src="KOREAPLACE/�ڶ�������.jpg" width="280px"
				height="250px"
				style="margin-left: 177px; border-radius: 80%; overflow: hidden;">
				<img src="KOREAPLACE/�ڶ�������.jpg" width="280px"
				height="250px"
				style="margin-left: 177px; border-radius: 80%; overflow: hidden;">
				<img src="KOREAPLACE/�ڶ�������.jpg" width="280px"
				height="250px"
				style="margin-left: 177px; border-radius: 80%; overflow: hidden;">
		
		
		<br> <br> <br> <br> <br>
	</div>

	<script type="text/javascript">
		
	</script>
</body>
</html>