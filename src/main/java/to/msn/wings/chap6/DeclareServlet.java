package to.msn.wings.chap6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chap6/DeclareServlet")
public class DeclareServlet extends HttpServlet {
	//インスタンス変数　i を初期化
	int i = 0;//JSPにおける宣言部で作った変数と同義。つまりサーバーが再起動しない限り引き継がれる。
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//コンテンツタイプを設定
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
			//変数iをインクリメントした結果を出力
		i++;
		out.println(i+"回目のアクセスです");

	}

}
