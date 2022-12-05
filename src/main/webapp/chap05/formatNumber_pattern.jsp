<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>il8nタグライブラリ</title>
</head>
<body>
	<c:set var="num" value="2501.9821" />
	<c:set var="num2" value="-0.9812" />
${num} ->
<fmt:formatNumber value="${num}" pattern="##,000.00" /><br /><%-- # は0なら表示しないという意味 --%>
${num} ->
<fmt:formatNumber value="${num}" pattern="00,000.00" /><br />
${num} ->
<fmt:formatNumber value="${num}" pattern="00E00" /><br />
${num2} ->
<fmt:formatNumber value="${num2}" pattern="% ##.00" /><br /><%-- %はパーセント表記 --%>
${num} ->
<fmt:formatNumber value="${num}" pattern="△0,000;▼0,000" /><br />
${num2} ->
<fmt:formatNumber value="${num2}" pattern="△0,000;▼0,000" /><br /><%-- 正の書式;負の書式  --%>>
</body>
</html>