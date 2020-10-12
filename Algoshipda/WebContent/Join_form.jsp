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
<div class="container">
    <div class="row">
    <div class="col-sm-12 text-left" >
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6">
    <h2 align="center">회원가입</h2>
    <form action="JoinService" method="post" accept-charset="utf-8">
        <table class="table table-boardered">
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" name="member_id" id = "member_id2" placeholder="id를 넣으세요"></td>  
               	<td><input type="button" value="중복확인" onclick="idCheck()"><p id="p1"></p></td>
            </tr>
            <tr>
                <th>패스워드</th>
                <td><input type="password" class="form-control" name="member_pw" placeholder="비밀번호 입력"></td>      
            </tr>
              
            <tr>
                <th>주소</th>
                <td><input type="text" class="form-control" name="member_addr"></td>       
            </tr>
             
            <tr>
                <th>연락처</th>
                <td><input type="tel" class="form-control" name="member_tel"></td>       
            </tr>
             <tr>
            	<td colspan='2' align='center'><input type="submit" value="회원가입"></td>
            	<td colspan='2' align='center'><input type="submit" value="취소"></td>
        	</tr>
        </table>
    </form>
    </div>
    </div>
    </div>
</div>


      <!-- footer.jsp파일 불러오기 -->

<script type="text/javascript">




 function idCheck() {
    var id = document.getElementById("member_id2");
    
    $.ajax({
         type :"get" ,  //get or post방식
         //QueryString 방식으로 전송 : ?(시작) member_id(이름값) + member_id.value(실제 변수값)
         url : "IdCheck?member_id="+id.value,  //서버 페이지의 주소
         dataType : "text",  //주고받을 데이터의 유형
         success : function(data) {
            
            p1 = document.getElementById("p1");
            
            if (data == "true") {
             p1.innerHTML = "사용할 수 없는 아이디입니다.";
          }else {
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
</body>
</html>