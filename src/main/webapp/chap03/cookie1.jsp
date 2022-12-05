<%@ page language="java" contentType="text/html; charset=UTF-8" import ="java.net.*"
	pageEncoding="UTF-8"%>

<%
String email = "";
//クッキー情報を取得
Cookie[] cookies = request.getCookies();
//クッキー情報が空でないときのみ配下の処理実行
if (cookies != null) {
	for (Cookie cook : cookies) {
		if (cook.getName().equals("email")) {
	email = URLDecoder.decode(cook.getValue(), "UTF-8");
	break;
		}
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="cookie2.jsp">
		メールアドレス： <input type="text" name="email" size="40" value="<%=email%>" />
		<input type="submit" value="送信" />
	</form>
</body>
</html>