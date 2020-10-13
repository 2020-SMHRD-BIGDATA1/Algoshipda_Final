<%@ page import = "com.model.FileDAO" %>
<%@ page import = "java.io.File" %>
<%@ page import ="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import ="com.oreilly.servlet.MultipartRequest" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 파일 업로드</title>
</head>
<body>
	<%
	String directory = application.getRealPath("/upload/");
	int maxSize = 1024 * 1024 * 100;
	String encoding = "UTF-8";
	
	MultipartRequest multipartRequest
	= new MultipartRequest(request, directory,maxSize,encoding,new DefaultFileRenamePolicy());
	
	String fileName = multipartRequest.getOriginalFileName("file");
	String filereal = multipartRequest.getFilesystemName("file");
	
	new FileDAO().upload(fileName, filereal);
	out.write("파일명" + fileName+"<br>");
	out.write("실제파일명" + filereal+"<br>");

	
	%>
</body>
</html>