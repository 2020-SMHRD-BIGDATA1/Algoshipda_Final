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
</style>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-left">
				<div class="col-sm-3"></div>

				<div class="col-sm-6" style="margin-top: 100px;">
					<h2 align="center">마이페이지</h2>
					
						<table class="table table-boardered">
							<th>패스워드</th>
							<td><input type="password" class="form-control"
								name="member_pw" placeholder="<%=info.getMember_pw()%>"></td>
							</tr>

							<tr>
								<th>주소</th>
								<td><input type="text" class="form-control"
									name="member_addr"placeholder="<%=info.getMember_addr()%>"></td>
							</tr>

							<tr>
								<th>연락처</th>
								<td><input type="tel" class="form-control"
									name="member_tel"placeholder="<%=info.getMember_tel()%>"></td>
							</tr>
						</table>
					
				</div>
			</div>
		</div>
	</div>
	<form action="main.jsp" method="post" accept-charset="utf-8">
							<tr>
								<td colspan='2' align='center'><input type="submit"
									value="돌아가기"></td>
							</tr>
							</form>
							<h2> MY LIST</h2>
		
		
		<div class = "jjim">
		<img src = "KOREAPLACE/쁘띠프랑스.jpg" width="200px" height="250px" align="middle" >
	
		
	
	
	  </div>

	<%@include file="footer.jsp"%>

	<script type="text/javascript">
		
	</script>
</body>
</html>