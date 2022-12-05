<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="point" value="30" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>タグライブラリ</title>
</head>
<body>
アンタの得点${point}...。 <br />
<c:choose>
	<c:when test = "${point < 20}">Dランク</c:when>
	<c:when test = "${point < 50}">Cランク</c:when>
	<c:when test = "${point < 70}">Bランク</c:when>
	<c:otherwise>ランクA</c:otherwise>
</c:choose>
だなせいぜい....。
</body>
</html>