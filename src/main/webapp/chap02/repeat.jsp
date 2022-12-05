<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!    //ここを宣言部という。暗黙オブジェクトをここでは変数、定数、メソッドしか宣言できない。暗黙オブジェクトも使えん
		//指定された文字列msgをcnt回連結したものを返すrepeatメソッド
public String repeat(String msg, int cnt){
	String result = "";
	for(int i = 0 ; i<cnt ; i++){
		result += msg;
	}
	return result;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宣言部</title>
</head>
<body>
<%-- repeatメソッドをスクリプトレットから呼び出し --%>
<% out.println(repeat("<h1 style = color:red;>5回繰り返します</h1>", 5)); %>
</body>
</html>
