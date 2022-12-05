<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>フォーム部品一覧</title>
</head>
<body>
	<form method=POST action="form.jsp">
		<input name="text" type="text" /><br /> <input name="time" type="time" /><br />
		<input name="number" type="number" /><br /> <input name="file"
			type="file" /><br /> <input name="color" type="color" /><br /> <input
			name="datetime" type="datetime" /><br /> <input name="email"
			type="email" /><br /> <input name="gender" type="radio" value="男" />男
		<input name="gender" type="radio" value="女" />女<br /> <input
			name="animal" type="checkbox" value="イヌ" />イヌ <input name="animal"
			type="checkbox" value="ヌコ様" />ヌコ様 <input name="animal"
			type="checkbox" value="カモノハシ" />カモノハシ<br /> 好きなトイレは？<br /> <select
			name="toilet">
			<option value="和式" selected="selected">和式</option>
			<option value="洋式">洋式</option>
			<option value="縄文式">縄文式</option>
		</select> <br /> 複数ある人はこちら！<br /> <select name="toilet2" size="5"
			multiple="multiple">
			<option value="和式" selected="selected">和式</option>
			<option value="洋式">洋式</option>
			<option value="縄文式">縄文式</option>
		</select> <br />
		<h1>なんかおもろいこと書いてよ</h1>
		<textarea name="txr" rows="8" cols="100" placeholder="おめえ口臭えぞ！"></textarea>
		<h3>あんさんのやる気はどんなんでい！</h3>
		<p>
			<input name="fire" type="range" value="50" min="0" max="100" step="1"/>
		</p>

	</form>
</body>
</html>