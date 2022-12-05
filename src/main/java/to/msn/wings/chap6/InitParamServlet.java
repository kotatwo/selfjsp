package to.msn.wings.chap6;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(
		urlPatterns={"/chap6/InitParamServlet"},
		initParams = {@WebInitParam(name = "path", value = "/WEB-INF/data/my.log")}
		)
public class InitParamServlet extends HttpServlet {
	private String path = null;
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
			//初期化パラメータの値をインスタンス変数pathにセット
		this.path = config.getInitParameter("path");
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//テキストファイル➁ログを記録するlogメソッド呼び出し
		this.log(request);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html><html><head><meta charset='UTF-8' />");
			out.println("<title>ログの記録</title>");
			out.println("</head><body>");
			out.println("ログを記録したんよ。");
			out.println("</body></html>");
	}

	private void log(HttpServletRequest request) throws IOException {
		ServletContext application = this.getServletContext();
		//ログ情報をStringBufferオブジェクトに書き出し
		StringBuffer builder = new StringBuffer();
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		builder.append(fmt.format(new Date()));
		builder.append("\t");
		builder.append(request.getServletPath());
		builder.append("\t");
		builder.append(request.getHeader("referer"));
		builder.append("\t");
		builder.append(request.getHeader("user-agent"));
		builder.append("\t");
			//初期化パラメーターで指定されたテキストファイルを開く
		OutputStreamWriter writer = new OutputStreamWriter(
				new FileOutputStream(application.getRealPath(this.path), true), "UTF-8");
		BufferedWriter buf = new BufferedWriter(writer ,10);
				// StringBufferオブジェクトの内容をテキストファイル書き込み
		buf.write(builder.toString());
		buf.newLine();
				//テキストファイルを閉じる
		buf.close();

	}

}
