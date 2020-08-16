<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String ten = (String)request.getAttribute("ten");
String anh = (String)request.getAttribute("anh");
%>
<h1><%=ten %></h1>
<img alt="" src="image/<%=anh %>">
</body>
</html>