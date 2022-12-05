package to.msn.wings.chap6;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/chap6/SelectServlet")
public class SelectServlet extends HttpServlet {
@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//addressテーブルからの取得結果をArrayListオブジェクトとして取得＆リクエスト属性にセット
	ArrayList<Address> list = Address.getInfos();
	request.setAttribute("list", list);
	//処理をselect.jspに転送
	this.getServletContext().getRequestDispatcher("/chap6/select.jsp").forward(request, response);
	}

}
