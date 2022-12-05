<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! 
    	//int i = 0; ここで宣言するとアクセスするたびにiの値がどんどん大きくなってしまう。
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>アクセスするごとに２が掛けられます</title>
</head>
<body>
<% 
int i = 0;
i= i + 1;
out.println(i + "回目のアクセスです " );
%>
</body>
</html>