<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! int i = 0; %>
    <%
    int tmp = i + 1;
    Thread.sleep(3000);
    i=tmp;
    out.println(i + "<span style = color : pink;>回目のアクセスです</span>");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>