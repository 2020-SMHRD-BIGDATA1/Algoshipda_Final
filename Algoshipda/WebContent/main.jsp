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
<link rel="shortcut icon" type="image/x-icon" href="assets/images/toplogo.ico">
<title>Title page</title>
<script src="jquery-3.5.1.min.js"></script>
<link href="./main.3f6952e4.css" rel="stylesheet">
<style>

@font-face {
	src: url("assets/css/fonts/Jalnan.ttf");
	font-family: "Jalnan";
}

:root {
	font-size: 16px;
	font-family: "Jalnan";
}
img {
	display: inline-block;
	width: 359px;
	height: 300px;
}

#pp {
	margin-left: 121px;
	margin-top: 1px;
	width: 84px;
	height: 45px;
}

.half {
	background-color: yellow;
}

.back {
	background-color: white;
	padding: 13%;
	margin: 9%;
	background-color: rgba(255, 255, 255, 0.5);
}

#file {
	display: none;
}

.img_upload:hover {
	cursor: pointer;
	transform: scale(1.05);
	-o-transform: scale(1.05);
	-moz-transform: scale(1.05);
	-webkit-transform: scale(1.05);
	transition: transform .35s;
	-o-transition: transform .35s;
	-moz-transition: transform .35s;
	-webkit-transition: transform .35s;
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

<body class="minimal"
	style="background-image: url('assets/images/background.PNG'); background-repeat: no-repeat; background-size: cover;">

	<!-- Add your content of header -->
	<%@include file="header.jsp"%>
	<!-- Add your site or app content here -->
	<div
		class="hero-full-container background-image-container white-text-container">
		<div class="section-container">
			<div class="container">
				<div class="row" style="width: 1300px;">
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<div class="hero-full-wrapper">
								<div class="text-content">
									<h1 style="font-family: 'Jalnan'">
										<span id="typed-strings"  > <span>그 곳이 알고 싶다.</span>
										</span> <span id="typed"></span><br>
									</h1>

								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6">
							<div class="hero-full-wrapper">
								<div class="text-content">
									<!-- <div class="back">  -->
									<form method="post" enctype="multipart/form-data"
										action="UploadService">

										<%
											if (info == null) {
										%><label for="file"><img class="img_upload"
											id="image_section2" src="./assets/images/upup.PNG"
											style="max-width: 359px; height: 300px; margin-left: 140px;" /></label>
										<%
											} else {
										%><label for="file"><img class="img_upload"
											id="image_section" src="./assets/images/upup.PNG"
											style="max-width: 359px; height: 300px; margin-left: 140px;" /></label>
										<%
											}
										%>
										<input class="btn btn-default" type="file" id="file"
											name="file">
										<center>
											<input class="btn_ej" type="submit" value="Upload"
												style="width: 355px; margin-top: 10px; opacity: 0.8;font-family: 'Jalnan'"><br>
										</center>
									</form>

									<!--  </div> -->
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

	<%@include file="footer.jsp"%>
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
		window.onload = function() {
			var file = document.getElementById('image_section2');
			// header 객체에 onclick 이벤트 속성을 연결 
			file.onclick = function() {
				alert('로그인 후 이용해주세요');
				location.href = "main.jsp";
			}
		};
	</script>
	<script type="text/javascript" src="./main.70a66962.js"></script>
	<div class="half"></div>
</body>

</html>