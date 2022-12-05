<%@ page language="java" contentType="text/html; charset=UTF-8" import = "java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--　今日の日付のページ属性todayにセット --%>
<% pageContext.setAttribute("today", new Date()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>il8nタグライブラリ</title>
</head>
<body>
	<%-- 現在の日付・時刻を長い形式で出力 --%>
日付時刻 ->
<fmt:formatDate value="${today}" type="BOTH" dateStyle="LONG" timeStyle="LONG" /><br />
	<%-- 現在の日付のみを短い形式で出力 --%>
日付 ->
<fmt:formatDate value="${today}" type="DATE" dateStyle="SHORT" /><br />
	<%-- 現在の時刻のみを短い形式で出力 --%>
時刻 ->
<fmt:formatDate value="${today}" type="TIME" timeStyle="SHORT" /><br />
</body>
</html>