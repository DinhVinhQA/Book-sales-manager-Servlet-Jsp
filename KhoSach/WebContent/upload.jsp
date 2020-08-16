<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> --%>
    <%@page import="java.io.File"%>

<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%> 
<%response.setContentType("text/html; charset=utf-8");%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="tam123" enctype= "multipart/form-data">
  Ho Tên: <input type="text" name="txthoten" value=""> <br>
  Đia chi: <input type="text" name="txtdiachi" value=""> <br>
  file: <input type="file" name="txtfile"><br>
  <input type="submit" name="subThem" value="Them">
  </form> 

</body>
</html>