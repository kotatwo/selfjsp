<%@ page language="java" contentType="text/html; charset=UTF-8" import = "java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>応答ヘッダ</title>
</head>
<body>
<%
response.setIntHeader("Refresh", 5); //5秒沖にリフレッシュ（リロード）
out.print("現在時刻:" + new Date());
%>
</body>
</html>