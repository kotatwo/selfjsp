package to.msn.wings.chap6;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BmiServlet
 */
@WebServlet("/chap6/BmiServlet")
public class BmiServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ポストデータの内容をdouble値として取得
		double h = Double.parseDouble(request.getParameter("height"));
		double w = Double.parseDouble(request.getParameter("weight"));
		//BMI値を算出し、リクエスト属性bmiにセット
		double bmi = w / (h*h);
		request.setAttribute("bmi", bmi);
		//BMI値から判定したランクをリクエスト属性rankにセット
		 if(bmi < 0.0001) {
			 request.setAttribute("rank", "宇宙にさえ到達し得る超絶不思議生物");
		}else if(bmi < 18.5) {
			request.setAttribute("rank", "痩せ気味");
		}else if(bmi < 25) {
			request.setAttribute("rank", "標準");
		}else if(bmi < 500){
			request.setAttribute("rank", "デブ");
		}else if(bmi < 10000){
			request.setAttribute("rank", "超越したクソデブ");
		}else {
			request.setAttribute("rank", "全ての次元の中で圧倒的ぶっちぎりで超越したゲリデブ");
		}
		//bmi_result.jspに処理を転送
		this.getServletContext().getRequestDispatcher("/chap6/bmi_result.jsp").forward(request, response);
	}

}
