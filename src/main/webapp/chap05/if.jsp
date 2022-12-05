<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="point" value="68" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Coreタグライブラリ</title>
</head>
<body>
貴様の得点は${point}やで。 <br />
<c:if test="${point > 60}"><!-- ""と{}の間に余計な空白とか入れると反映されないらしい。ひどすぎて草 -->
	<span style="color:Red;">合格だよ！！</span>
</c:if>
</body>
</html>