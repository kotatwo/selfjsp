<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.net.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>クエリ情報</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
out.println(request.getParameter("keyword"));
%>
</body>
</html>