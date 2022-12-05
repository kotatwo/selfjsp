<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>データの登録</title>
</head>
<body>
	<form method="POST" action="insert_process.jsp">
		<table>
			<tr>
				<th align="right">名前:</th>
				<td><input type="text" name="name" size="15" maxlength="50" /></td>
			</tr>
			<tr>
				<th align="right">住所:</th>
				<td><input type="text" name="address" size="35" maxlength="170" /></td>
			</tr>
			<tr>
				<th align="right">電話番号:</th>
				<td><input type="text" name="tel" size="20" maxlength="20" /></td>
			</tr>
			<tr>
				<th align="right">E-Mailアドレス:</th>
				<td><input type="text" name="email" size="50" maxlength="100" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="登録" /> 
				<input type="reset" value="クリア" /></td>
			</tr>

		</table>
	</form>
</body>
</html>