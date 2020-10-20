<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.BbsDTO"%>
<%@page import="com.model.BbsDAO"%>
<%@page import="java.io.PrintWriter"%>
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

<link href="./main.3f6952e4.css" rel="stylesheet">
<style>
</style>
</head>

<body class="">
	<%@include file="header.jsp"%>

	<div class="section-container">
		<div class="container">
			<div class="row">

				<div class="col-sm-8 col-sm-offset-2 section-container-spacer">
					<div class="text-center">
						<h1 class="h2">게시글 수정</h1>
						<h3>게시물을 작성해주세요.</h3>
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
											<form method="post" action="UpdateService"
												enctype="multipart/form-data"
												style="width: 100%; padding: 50px;">
												<table class="table table-striped"
													style="text-align: center; border: 10px solid #dddddd; width: 100%;">
													<thead>
														<tr>
															<th colspan="2"
																style="background-color: #eeeeee; text-align: center;">게시판
																글쓰기 양식</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><input type="text" class="form-control"
																placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
														</tr>

														<tr>
															<td><input type="file" class="form-control"
																placeholder="파일업로드" name="bbsImg"></td>
														</tr>
														<tr>
															<td><textarea type="text" class="form-control"
																	name="bbsContent" maxlength="2048"
																	style="height: 350px;"></textarea></td>
														</tr>
													</tbody>

												</table>
												<input type="submit" class="btn btn-primary pull-right"
													value="글쓰기"> <input type="reset" value="내용 초기화"
													class="button">
											</form>

										</div>
									</div>

								</section>
								<!-- / -->

							</div>
							<!--/row-->
						</div>

					</div>


					<!--/myCarousel-->
				</div>



			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>

	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			navActivePage();
		});
	</script>

	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

-->
	<script type="text/javascript" src="./main.70a66962.js"></script>
</body>

</html>