<%@page import="java.net.URLEncoder"%>
<%@page import="javax.print.URIException"%>
<%@page import="com.model.MemberDTO"%>
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

<title>Title page</title>
<script src="jquery-3.5.1.min.js"></script>
<link href="./main.3f6952e4.css" rel="stylesheet">
<script type="text/javascript">
	function idCheck() {
		id = document.getElementById("in_id");

		$.ajax({
			type : "get", //get or post방식
			//QueryString 방식으로 전송 : ?(시작) member_id(이름값) + member_id.value(실제 변수값)
			url : "idCheck?member_id=" + member_id.value, //서버 페이지의 주소
			dataType : "text", //주고받을 데이터의 유형
			success : function(data) {

				p1 = document.getElementById("p1");

				if (data == 'true') {
					p1.innerHTML = "사용할 수 없는 아이디입니다.";
				} else {
					p1.innerHTML = "사용할 수 있는 아이디입니다.";
				}

			},
			error : function() {
				//서버와 통신이 실패했을 때 후 처리
				alert("호출실패");
			}
		});
	}
</script>
<style>
img {
	display: inline-block;
	width: 150px;
	max-width: 100%;
	height: 150px;
}

#pp {
	margin-left: 121px;
	margin-top: 1px;
	width: 84px;
	height: 45px;
}

.nav navbar-nav {
	
}

.half {
	background-color: yellow
}
</style>
</head>

<body class="minimal">

	<!-- Add your content of header -->
	<header>
		<%
			MemberDTO info = (MemberDTO) session.getAttribute("info");
		%>
		<nav class="navbar  navbar-fixed-top navbar-inverse">
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
			</div>
		</nav>
	</header>
	<!-- Add your site or app content here -->
	<div
		class="hero-full-container background-image-container white-text-container"
		style="background-image: url('./assets/images/')">
		<div class="section-container">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<div class="row">

							<div class="col-xs-12 col-md-6">
								<div class="hero-full-wrapper">
									<div class="text-content">
													<!-- 				<img src="./assets/images/Pink-pointing-up.png">
							<h1>
								그 곳이 알고싶다<br> <span id="typed-strings"> <span>안녕

										이지!</span> <span>이지차는 티볼리</span> <span>최고가 나의목표</span>
								</span> <span id="typed"></span><br>
								
								<form method="post" enctype="multipart/form-data"
									action="UploadService">
									
									<input type="file" id="file" name="file">
									
									<img id="image_section" src="./assets/images/Pink-pointing-up.png" alt="your image"/><input
										type="submit" value="업로드"><br> 
										<h1>
											<span id="typed-strings"> <span>그 곳이 알고 싶다.</span></span> <span
												id="typed"></span><br> -->

										<!-- </h1> -->

									</div>
								</div>
							</div>
							<div class="col-xs-12 col-md-6">
								<div class="hero-full-wrapper">
									<div class="text-content">
										<form method="post" enctype="multipart/form-data"
											action="UploadService">

											<img id="image_section" src="./assets/images/up.PNG"
												alt="your image" style="max-width: 359px; height: 300px;" /></label>
											<input class="btn btn-default" type="file" id="file"
												name="file"> <input class="btn btn-default"
												type="submit" value="업로드"><br>

										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			>>>>>>> branch 'master' of
			https://github.com/2020-SMHRD-BIGDATA1/Algoshipda_Final.git
		</div>
	</div>
	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			type();
			movingBackgroundImage();
		});
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#image_section').attr('src', e.target.result);
				}
				
				reader.readAsDataURL(input.files[0]);
			}
		}

		// 이벤트를 바인딩해서 input에 파일이 올라올때 위의 함수를 this context로 실행합니다.
		$("#file").change(function() {
			readURL(this);
		});
	</script>
	<script type="text/javascript" src="./main.70a66962.js"></script>
	<div class="half"></div>
</body>

</html>