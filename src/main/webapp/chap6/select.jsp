<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaBeans連携</title>
</head>
<body>
<table border="1">
	<tr>
		<th>名前</th><th>住所</th><th>電話番号</th><th>E-Mailアドレス</th>
	</tr>
<%--リクエスト属性listから順にAddressオブジェクトを取り出し,その内容を出力 --%>
<c:forEach var = "item" items="${requestScope['list'] }">
	<tr>
		<td>${fn:escapeXml(item.name) }</td>
		<td>${fn:escapeXml(item.address) }</td>
		<td>${fn:escapeXml(item.tel) }</td>
		<td>${fn:escapeXml(item.email) }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>