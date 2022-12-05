package to.msn.wings.chap6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//サーブレットクラスを定義
@WebServlet("/chap6/HelloServlet")
public class HelloServlet extends HttpServlet {
	//サーブレット呼び出し時に実行されるdoGetメソッド

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//コンテンツタイプの設定
		response.setContentType("text/html;charset=UTF-8");
		//出力のためのPrintWriterオブジェクトを取得
		PrintWriter out = response.getWriter();
		//一連のコンテンツを出力
		out.println("<!DOCTYPE htnl><html><head><meta charset='UTF-8' />");
		out.println("<title>スクリプトレット</title>");
		out.println("</head><body>");
		for(int i = 0; i < 5 ; i++) {
			out.println("こんにちは、世界！ <br />");
		}
		out.println("</body></html>");
	}

}
