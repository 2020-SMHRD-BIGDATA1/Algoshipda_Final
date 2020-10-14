<%@page import="java.net.URLEncoder"%>
<%@page import="javax.print.URIException"%>
<%@page import="com.model.MemberDTO"%>
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

<title>Title page</title>
<script src="jquery-3.5.1.min.js"></script>
<link href="./main.3f6952e4.css" rel="stylesheet">
<script type="text/javascript">
	function idCheck() {
		id = document.getElementById("in_id");

		$.ajax({
			type : "get", //get or post���
			//QueryString ������� ���� : ?(����) member_id(�̸���) + member_id.value(���� ������)
			url : "idCheck?member_id=" + member_id.value, //���� �������� �ּ�
			dataType : "text", //�ְ���� �������� ����
			success : function(data) {

				p1 = document.getElementById("p1");

				if (data == 'true') {
					p1.innerHTML = "����� �� ���� ���̵��Դϴ�.";
				} else {
					p1.innerHTML = "����� �� �ִ� ���̵��Դϴ�.";
				}

			},
			error : function() {
				//������ ����� �������� �� �� ó��
				alert("ȣ�����");
			}
		});
	}
</script>
<style>
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
						<li><a href="MyPage_form.jsp">ŷ��ã��</a></li>

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
		<div class="container">
	
			<div class="row">
				
				<div class="col-xs-12">
					<div class="hero-full-wrapper">
						<div class="text-content">
						
						
						<img src="./images/Pink-pointing-up.png">
						
						
							<h1>
								�� ���� �˰�ʹ�<br> <span id="typed-strings"> <span>�ȳ�
									
										����!</span> <span>�������� Ƽ����</span> <span>�ְ� ���Ǹ�ǥ</span>
								</span> <span id="typed"></span><br>
								<form method="post" enctype="multipart/form-data"
									action="UploadService">
									<input type="file" id="file" name="file"><img
										id="image_section" src="#" alt="your image" /><input
										type="submit" value="���ε�" ><br>

								</form>



							</h1>

						</div>
					
						
					</div>
				</div>
					
			</div>
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

		// �̺�Ʈ�� ���ε��ؼ� input�� ������ �ö�ö� ���� �Լ��� this context�� �����մϴ�.
		$("#file").change(function() {
			readURL(this);
		});
	
		
	</script>






	<script type="text/javascript" src="./main.70a66962.js"></script>

	<div class="half"></div>
</body>

</html>