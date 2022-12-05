<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.sql.*, javax.naming.*, javax.sql.*"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
Connection cn = null;
PreparedStatement ps = null;
String url = "jdbc:mysql://localhost/selfjsp";
String usr = "root";
String pw = "";
try{
	//ドライバの指定
	Class.forName("com.mysql.jdbc.Driver");
	//データベースへの接続を確立
	cn = DriverManager.getConnection(url, usr, pw);
	ps = cn.prepareStatement("INSERT INTO address(name, address, tel, email) VALUES(? ,?, ?, ?)");
		//INSERT命令にポストデータの内容をセット
	ps.setString(1,request.getParameter("name"));
	ps.setString(2,request.getParameter("address"));
	ps.setString(3,request.getParameter("tel"));
	ps.setString(4,request.getParameter("email"));
		//INSERT命令を実行
	ps.executeUpdate(); //操作したレコードの件数を戻り値として返す。
}catch(Exception e){
	throw new ServletException(e);
}finally{
	try{
		if(ps != null){ps.close();}
		if(cn != null){cn.close();}
	}catch(Exception  e){
		
	}
		//処理後は入力フォームにリダイレクト
	response.sendRedirect("insert_form.jsp");//入力されたデータを空欄にする。(再読み込み)
}
%>