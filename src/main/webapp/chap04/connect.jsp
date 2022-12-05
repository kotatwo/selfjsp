<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>データベースへ接続</title>
</head>
<body>
	<%
	Connection cn = null;//finallyでも参照するためtryの外に書く。
	try {
		Class.forName("com.mysql.jdbc.Driver");
		// Database接続情報の設定
		String url = "jdbc:mysql://localhost/selfjsp/";
		String usr = "root";
		String pw = "";

		// Databaseへ接続
		cn = DriverManager.getConnection(url, usr, pw);
		DatabaseMetaData dm = cn.getMetaData();

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (cn != null) {
		cn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	%>

	データベースへの接続に成功！
</body>
</html>
<!-- サーバからデータをとってきたりするときはtry catchの中に書くべし。 -->
<!-- try catch でcloseするときはcloseする変数の宣言はtryの外でやる。 -->