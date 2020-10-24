<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

.col-lg-4 {
	background-color: #f5f5f5;
	padding: 40px;
	background-color: rgba(255, 255, 255, 0.3);
	margin-left: 280px;
	width: 550px;
	padding-top: 0px;
	padding-bottom: 5px;
}

tr, td {
	padding: 5px;
}
</style>
</head>


<body class="minimal"
	style="background-image: url('assets/images/back_ground.PNG'); background-repeat: no-repeat; background-size: cover;">

	<div
		style="width: 100%; text-align: center; margin-top: 50px; margin-bottom: 50px;">
		<a href="main.jsp"><img src="assets/images/algoicon.png"
			style="width: 260px; height: 130px;"></a>
	</div>

	<div class="container">
		<form method="post" action="JoinService">
			<div class="col-lg-4" style="position: relative;">

				<!-- 로그인 정보를 숨기면서 전송post -->


				<h3
					style="text-align: center; color: white; font-size: 50px; font-family: 'Jalnan';">JOIN</h3>
				<table style="width: 500px;">
					<tr>
						<td style="text-align: center;"><P
								style="color: white; font-family: 'Jalnan';">ID</P></td>
						<td><input type="text" class="form-control" name="member_id"
							id="member_id2" placeholder="id를 넣으세요" maxlength="20"></td>
						<td><input type="button"
							style="width: 60px; font-size: 13px; float: left; margin-left: 20px; margin-botton: 50px; padding: 5px;"
							class="btn_ej" value="Check" onclick="idCheck()">
							<p id="p1"></p></td>
					</tr>
					<tr>
						<td style="text-align: center;"><p
								style="color: white; font-family: 'Jalnan';">PW</p></td>
						<td><input type="password" class="form-control"
							name="member_pw" placeholder="비밀번호 입력" maxlength="20"></td>
					</tr>
					<tr>
						<td style="text-align: center;"><p
								style="color: white; font-family: 'Jalnan';">ADDR</p></td>
						<td><input input type="text" class="form-control"
							name="member_addr" maxlength="20"></td> 

					</tr>
					<tr>
						<td style="text-align: center;">
							<p style="color: white; font-family: 'Jalnan';">TEL</p>
						</td>
						<td><input input type="tel" class="form-control"
							" name="member_tel" maxlength="20"></td>
					</tr>

				</table>

				<div style="padding: 20px;">
					<input type="button" class="btn_ej" id="button1"
						style="margin-left: 100px; font-family: 'Jalnan';"
						onclick="button_click();" value="취소"> <input type="submit"
						class="btn_ej" id="button1"
						style="margin-left: 10px; font-family: 'Jalnan';" value="회원가입">

				</div>
			</div>
		</form>
	</div>
	</div>
	</div>


	<!-- ------------------------------------------------------------------------------------------------------------------------------ -->
	>>>>>>> branch 'master' of
	https://github.com/2020-SMHRD-BIGDATA1/Algoshipda_Final.git


	<script type="text/javascript">
		function button_click() {
			location.href = 'main.jsp'
		}

		function idCheck() {
			var id = document.getElementById("member_id2");

			$.ajax({
				type : "get", //get or post방식
				//QueryString 방식으로 전송 : ?(시작) member_id(이름값) + member_id.value(실제 변수값)
				url : "IdCheck?member_id=" + id.value, //서버 페이지의 주소
				dataType : "text", //주고받을 데이터의 유형
				success : function(data) {

					p1 = document.getElementById("p1");

					if (data == "true") {
						alert("사용할 수 없는 아이디 입니다.");
					} else {
						alert("사용 가능한 아이디 입니다.");
					}

				},
				error : function() {
					//서버와 통신이 실패했을 때 후 처리
					alert("호출실패");
				}
			});
		}
	</script>
	>>>>>>> branch 'master' of
	https://github.com/2020-SMHRD-BIGDATA1/Algoshipda_Final.git
</body>
</html>