<%@page import="com.model.MemberDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="javax.print.URIException"%>
<%@page import="java.net.URLEncoder"%>
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
<style>

.form-con {
	width: 520px;
	padding: 8px 14px;
	margin: 8px;
	background-color: white;
}

.table_con {
	text-align: center;
	width: 100%;
	background-color: #f5f5f5;
}

th {
	width: 520px;
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

<body class="" style="background-image:url('assets/images/back_ground.PNG'); background-repeat:no-repeat;background-size : cover;">
	<%@include file="header.jsp"%>
	<%
		if (info == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = 'Login_form.jsp'");
		script.println("</script>");
	} else {
	%>



	<div class="section-container" style="padding:100px;">
		<div class="container">
			<div class="row">

				<div class="col-sm-8 col-sm-offset-2 section-container-spacer">
					<div class="text-center" >
						<h1 class="h1" style="font-size: 40px; color: white;margin-bottom:30px;">자유게시판</h1>
						<hr style=";border: solid 1px white; width: 100%;">
						
					</div>
				</div>

				<div class="col-md-12">


					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="row">

								<!-- 게시판시작 -->
								<section class="blog_area section-padding">

									<div class="container">
										<div class="row">
											<form method="post" action="WriteService"
												enctype="multipart/form-data"
												style="width: 100%; padding: 50px;">
												<table class="table_con"
													style="text-align: center; border: 10px solid #f5f5f5; width: 100%;">
													<tbody>
														<tr>

															<th><input type="text" class="form-con"
																placeholder="글 제목" name="bbsTitle" maxlength="50"
																style="border: 1px solid lightgray;"></th>


															<td rowspan="3"><label for="file"><img
																	class="img_upload" id="image_section"
																	src="./assets/images/upup.PNG"
																	style="max-width: 359px; height: 300px;" /> </label></td>

														</tr>

														<tr>
															<th><input type="file" class="form-con" id="file"
																name="bbsImg" style="border: 1px solid lightgray;"></th>
														</tr>
														<tr>
															<th><textarea type="text" class="form-con"
																	name="bbsContent" maxlength="2048" placeholder="글 내용"
																	style="height: 350px; border: 1px solid lightgray;"></textarea></th>
														</tr>
													</tbody>

												</table>
												<center style="background-color: #f5f5f5; padding-bottom:20px;">

													<input class="btn_ej" type="submit" value="글쓰기">

												</center>
											</form>

										</div>
									</div>

								</section>
								<!-- / -->

							</div>
							<!--/row-->
						</div>

					</div>

					<%
						}
					%>
					<!--/myCarousel-->
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
	</script>
	<script type="text/javascript" src="./main.70a66962.js"></script>
	<div class="half"></div>
</body>

</html>