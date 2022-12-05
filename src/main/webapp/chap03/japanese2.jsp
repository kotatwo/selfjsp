<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<%
//テキストボックスの値から挨拶メッセージを生成
request.setCharacterEncoding("UTF-8"); //これで日本語も表示されるようになる
out.println("こんちゃす、" + request.getParameter("nam") + "さん！");
%>
</body>
</html>