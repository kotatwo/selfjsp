<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%-- <sql:setDataSource var="db" dataSource="jdbc/selfjsp" />--%>
<%--SELECT命令を実行＆結果セットを取得--%>
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	var="db"
	url="jdbc:mysql://localhost/selfjsp"
	user="root"
	password=""/>
<sql:query var="rs" dataSource="${db}" >
	SELECT * FROM address ORDER BY id
</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
<table border="1">
<tr>
	<th>名前</th><th>住所</th><th>電話番号</th><th>E-Mailアドレス</th>
</tr>

<c:forEach var = "row" items = "${rs.rows}">
	<tr>
		<td>${row.name}</td>
		<td>${row.address}</td>
		<td>${row.tel}</td>
		<td>${row.email}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>