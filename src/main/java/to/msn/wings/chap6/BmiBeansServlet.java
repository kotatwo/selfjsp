package to.msn.wings.chap6;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BmiBeansServlet
 */
@WebServlet("/chap6/BmiBeansServlet")
public class BmiBeansServlet extends HttpServlet {
@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Bmiクラスにポストデータの内容をセットしたうえで、BMI値を算出
	Bmi bmi = new Bmi();
	bmi.setHeight(Double.parseDouble(request.getParameter("height")));
	bmi.setWeight(Double.parseDouble(request.getParameter("weight")));
	bmi.calculate();
	//bmiオブジェクトをリクエスト属性bmiにセット
	request.setAttribute("bmi", bmi);
	//bmiBeans_result.jspに処理を転送
	this.getServletContext().getRequestDispatcher("/chap6/bmiBeans_result.jsp").forward(request, response);
	}

}
