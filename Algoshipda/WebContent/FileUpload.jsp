<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 파일 업로드</title>
</head>
<body>
	<form action="uploadAction.jsp" method="post" enctype="Multipart/form-data">
	파일: <input type="file" name="flie"><br>
	<input type="submit" value="업로드"><br>
	</form>
</body>
</html>