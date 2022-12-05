package to.msn.wings.chap6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chap06/PostServlet")
public class PostServlet extends HttpServlet {
	//サーブレットの呼び出し時に実行されるdoPostメソッド
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// コンテンツの設定
		 response.setContentType("text/html;charset=UTF-8");
		 //出力のためのPrintWriterオブジェクト取得]
		 PrintWriter out = response.getWriter();
		 //一連のコンテンツを出力
		 out.println("<!DOCTYPE html><html><head><meta charset='UTF-8' />");
		 out.println("<title>ポストデータ</title>");
		 out.println("</head><body>");
		 String animal = request.getParameter("animal");
		 if(animal.equals("ham")) {
			 out.println("つぶらな瞳をつぶしたくなりますよね♪");
		 }else if(animal.equals("dog")) {
			out.println("わんわんうるさいと喉を引き裂きたくなるよね♪");	 
		 }else if(animal.equals("goki")) {
			 out.println("可愛すぎて、ゴキブリの足で花占いしたくなりますよね★");
		 }else {
			 out.print("は？誰だよお前？");
		 }
		 out.println("</body></html>");
	}

}
