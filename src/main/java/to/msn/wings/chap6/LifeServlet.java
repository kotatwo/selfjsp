package to.msn.wings.chap6;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/chap6/LifeServlet")
public class LifeServlet extends HttpServlet {
	//サーブレットの初回呼び出し時にログ出力
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		ServletContext application = this.getServletContext();
		application.log("init method is called.");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = this.getServletContext();
		application.log("doGet method is called");
	}	
	//アプリケーション（コンテナ）の終了/再起動時にログ出力
	@Override
	public void destroy() {
		ServletContext application = this.getServletContext();
		application.log("destroy method is called.");

	}
	
}
