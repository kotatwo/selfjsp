<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book select</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>ISBNコード</th><th>書名</th><th>価格</th>
			<th>出版社</th><th>刊行年月日</th>
		</tr>
	<%
	Connection cn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost/selfjsp";
	String usr = "root";
	String pw = "";
	try{
		Class.forName("com.mysql.jdbc.Driver");
		cn = DriverManager.getConnection(url, usr, pw);
		ps = cn.prepareStatement("SELECT * FROM book ORDER BY published DESC");
		rs = ps.executeQuery();
		while(rs.next()){
	%>
			<tr>
			<td><%=rs.getString("isbn") %></td>
			<td><%=rs.getString("title") %></td>
			<td><%=rs.getString("price") %></td>
			<td><%=rs.getString("publish") %></td>
			<td><%=rs.getString("published") %></td>
			</tr>
<% 
		}
	}catch(Exception e){
		throw new ServletException(e);
	}finally{
		try{
			if(rs != null){rs.close();}
			if(ps != null){ps.close();}
			if(cn != null){cn.close();}
		}catch(Exception e){}
	}
	%>
	</table>
</body>
</html>