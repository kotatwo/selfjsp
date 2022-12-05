<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.net.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>クッキー情報</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String value = URLEncoder.encode(request.getParameter("email"), "UTF-8");
	//クッキーオブジェクトを生成
Cookie cook = new Cookie("email", value);
cook.setMaxAge(60*60*24*180);//有効期限六か月先まで　単位は秒
response.addCookie(cook);//クッキーをブラウザに送信

%>
クッキーが保存されまして...。
</body>
</html>