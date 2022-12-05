<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>il18n タグライブラリ</title>
</head>
<body>
<%-- 数値の整数部分のみを解析 --%>
<c:set var="num" value="1249.31" />
<fmt:parseNumber value="${num}" integerOnly="true" var="inum" />
${inum} <br />
<%-- 数値をパーセント値として解析 --%>
<c:set var="perc" value="12.5%" />
<fmt:parseNumber value="${perc}" type="PERCENT" var="iperc" />
${iperc} <br />
<%-- 日付を与えられた書式で解析 --%>
<c:set var="today" value="2012年10月26日" />
<fmt:parseDate value="${today}" pattern="yyyy年MM月dd日" var="dtoday" />
${dtoday} <br />
<%-- 時刻を与えられた条件 --%>
<c:set var="today2" value="18:35" />
<fmt:parseDate value="${today2}" type="TIME" timeStyle="SHORT" var="dtoday2" />
${dtoday} <br />
</body>
</html>