<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
		//マップにJSP,PGP,ASP.NETというキーを追加
HashMap<String, String> map = new HashMap<String, String>();
map.put("JSP", "JavaServer Pages");
map.put("PHP", "PHP:Hypertext Preprocessor");
map.put("ASP.NET", "Active Serve Page .NET");
	// できあがったマップをページ属性archにセット
pageContext.setAttribute("arch", map);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>タグライブラリ</title>
</head>
<body>
<ul>
	<c:forEach var="item" items="${arch}">
		<li>${item.key}:${item.value} </li>
	</c:forEach>
</ul>
</body>
</html>