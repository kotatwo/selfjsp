<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%-- リクエストデータの文字コードを宣言 --%>
<fmt:requestEncoding value="UTF-8" />
<%-- データベースへの接続を確立 --%>
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	var="db"
	url="jdbc:mysql://localhost/selfjsp"
	user="root"
	password=""/>
<%--INSERT命令の組み立て&実行 --%>
<sql:update dataSource="${db}">
	INSERT INTO address(name, address, tel, email) VALUES (? ,? ,? ,?)
	<sql:param value="${param['name']}" />
	<sql:param value="${param['address']}" />
	<sql:param value="${param['tel']}" />
	<sql:param value="${param['email']}" />
</sql:update>
<%-- 処理後はinsert_form.jspへリダイレクト --%>
<c:redirect url="insert_form.jsp" />
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
