<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<!-- action属性にはポストデータの送信先を指定 -->
<form method = "POST" action = "post2.jsp">
あなたの好きな生き物は？
<select name = "animal">
	<option value = "ham">ハムスター</option>
	<option value = "dog">イヌ</option>
	<option value = "goki">ゴキブリ</option>
	<option value  = "you">あなた</option>
</select>
<input type = "submit" value = "送信">
</form>
</body>
</html>