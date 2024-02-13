<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String saveDirectory = application.getRealPath("/upload"); 
	out.print(saveDirectory); 
	int maxPostSize = 1024*1000;
	MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxPostSize, "utf-8"); 
%>

</body>
</html>