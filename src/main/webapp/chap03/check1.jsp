<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>チェックボックス</title>
</head>
<body>
<form method = "POST" action = "check2.jsp">
おまえがよくつかうサーバサイド技術は？<br />
<input name = "arch" type = "checkbox" value = "JSP&サーブレット" />JSPサーブレット
<input name = "arch" type = "checkbox" value = "ASP.NET" />ASP.NET
<input name = "arch" type = "checkbox" value = "PHP" />PHP
<input type = submit value="送信" />
</form>
</body>
</html>