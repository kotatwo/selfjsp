<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transactionトランザクション処理</title>
</head>
<body>
<%
	
	Connection cn = null;
	PreparedStatement ps1 = null;
	PreparedStatement ps2 = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost/selfjsp";
	String usr = "root";
	String pw = "";	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		cn = DriverManager.getConnection(url, usr, pw);
		cn.setAutoCommit(false);
		ps1 = cn.prepareStatement("INSERT INTO book(isbn, title, price, publish, published) VALUES('978-4-7981-1257-2', '10日で覚えるjQuery入門教室', 2940, '翔泳社', '2011-06-24')");
			//↓ここで重複違反発生
		ps2 = cn.prepareStatement("INSERT INTO book(isbn, title, price, publish, published) VALUES('978-4-7981-1257-2', '10日で覚えるjQuery入門教室', 2940, '翔泳社', '2011-06-24')");
		ps1.executeUpdate();
		ps2.executeUpdate();
			//全ての処理が成功したら、トランザクションをコミット
		cn.commit();
	}catch(Exception e){
		//例外が発生したら、エラーメッセージを表示＆トランザクションをロールバック
		out.print("エラーメッセージ：" + e.getMessage());
		cn.rollback();
	}finally{
		try{
			if(ps1 != null){ps1.close();}
			if(ps2 != null){ps1.close();}
			if(cn != null){cn.close();}
			
		}catch(Exception e){}
	}


%>

</body>
</html>