<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<%

String animal = request.getParameter("animal");//request.getParameterで指定された名前と合致するフォーム部品を連れてくる
if(animal.equals("ham")){
	out.println("つぶらな瞳かわええよなあ..。");
}else if(animal.equals("dog")){
	out.println("こいつこそ相棒！");
}else if(animal.equals("goki")){
	out.println("あ...そうすか...（やばこいつ。）");
}else{
	out.println("(〃▽〃)ﾎﾟｯ");
}


%>

</body>
</html>
