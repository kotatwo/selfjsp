<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP＆サーブレット連携</title>
</head>
<body>
	<form method = "POST" action="BmiBeansServlet">
		身長：<input type = "text" name="height" size="4">(m)<br />
		体重：<input type = "text" name="weight" size="4">(kg)
		<input type="submit" value="計算" />
	</form>
</body>
</html>
<!-- JavaBeansとは部品化を行う考え方！ちょっと何言ってるかわかんない。 -->