<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>結果テスト</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>名前</th>
			<th>住所</th>
			<th>電話番号</th>
			<th>E-Mailアドレス</th>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");//今回は不要
		//データベース接続の設定
		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String url = "jdbc:mysql://localhost/selfjsp";
		String usr = "root";
		String pw = "";
		try {
			//ドライバの指定
			Class.forName("com.mysql.jdbc.Driver");
			//データベースへの接続を確立
			cn = DriverManager.getConnection(url, usr, pw);
			//SELECT命令の準備
			ps = cn.prepareStatement("SELECT * FROM address ORDER BY id");
			//SELECT命令を実行　ここexecuteUpdateにしないよう注意！
			rs = ps.executeQuery();
			//結果セットの内容を順に出力
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("address")%></td>
			<td><%=rs.getString("tel")%></td>
			<td><%=rs.getString("email")%></td>
		</tr>
		<%

		}

		} catch (Exception e) {
		throw new ServletException(e);
		} finally {
		try {
		if (rs != null) {
			rs.close();
		}
		if (ps != null) {
			ps.close();
		}
		if (cn != null) {
			cn.close();
		}
		} catch (Exception e) {
		}
		}
		%>
	</table>
</body>
</html>