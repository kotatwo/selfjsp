<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
選択されたのは、
<%
	//リクエストデータの文字コードを宣言
request.setCharacterEncoding("UTF-8");
	//チェックボックスの値を獲得
String[] archs = request.getParameterValues("arch");
	String result = "";
	for(String arch : archs){
		result += arch + "&nbsp;";
	}
	out.print(result);
%>
です。
</body>
</html>