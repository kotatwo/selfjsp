<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String email = (String)session.getAttribute("email");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>セッション情報</title>
</head>
<body>
	<form method="POST" action="<%=response.encodeURL("session2.jsp") %>">
	メールアドレス：
		<input type="text" name="email" size="40"
		  value="<%=(email == null) ? "" : email%>" />
		<input type="submit" value="送信" />
	</form>
</body>
</html>