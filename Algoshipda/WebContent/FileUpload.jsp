<%@page import="com.model.FileDTO"%>
<%@page import="com.model.FileDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" 
pageEncoding="EUC-KR"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>Insert title here</title> 
</head> 
<form method="post" enctype="multipart/form-data" action="uploadAction.jsp"> 
파일:<input type="file" name="file"><br>
<input type="submit" value="업로드"><br> 
</form> 





<body> 
</body> 
</html> 