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
    <h2 align="center">ȸ������</h2>
    <form action="JoinService" method="post" accept-charset="utf-8">
        <table class="table table-boardered">
            <tr>
                <th>���̵�</th>
                <td><input type="text" class="form-control" name="member_id" id = "member_id2" placeholder="id�� ��������"></td>  
               	<td><input type="button" value="�ߺ�Ȯ��" onclick="idCheck()"><p id="p1"></p></td>
            </tr>
            <tr>
                <th>�н�����</th>
                <td><input type="password" class="form-control" name="member_pw" placeholder="��й�ȣ �Է�"></td>      
            </tr>
              
            <tr>
                <th>�ּ�</th>
                <td><input type="text" class="form-control" name="member_addr"></td>       
            </tr>
             
            <tr>
                <th>����ó</th>
                <td><input type="tel" class="form-control" name="member_tel"></td>       
            </tr>
             <tr>
            	<td colspan='2' align='center'><input type="submit" value="ȸ������"></td>
            	<td colspan='2' align='center'><input type="submit" value="���"></td>
        	</tr>
        </table>
    </form>
    </div>
    </div>
    </div>
</div>


      <!-- footer.jsp���� �ҷ����� -->

<script type="text/javascript">




 function idCheck() {
    var id = document.getElementById("member_id2");
    
    $.ajax({
         type :"get" ,  //get or post���
         //QueryString ������� ���� : ?(����) member_id(�̸���) + member_id.value(���� ������)
         url : "IdCheck?member_id="+id.value,  //���� �������� �ּ�
         dataType : "text",  //�ְ���� �������� ����
         success : function(data) {
            
            p1 = document.getElementById("p1");
            
            if (data == "true") {
             p1.innerHTML = "����� �� ���� ���̵��Դϴ�.";
          }else {
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
</body>
</html>