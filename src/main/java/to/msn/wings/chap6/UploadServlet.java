/*package to.msn.wings.chap6;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(location="C:/tmp/")
@WebServlet("/chap6/UploadServlet")
public class UploadServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//アップロードされたファイルを取得
		Part part = request.getPart("file");
		//オリジナルのファイル名でアップロードファイルを保存
		String name = this.getFileName(part);
		if(this.isValidFile(name)) {
			part.write(getServletContext().getRealPath("/WEB-INF/data/") + name);
			System.out.println(getServletContext().getRealPath("/WEB-INF/data/") + name);
			//処理終了後はアップロードフォームにダイレクト
			response.sendRedirect("upload.jsp");
		}else {
			response.getWriter().println("Invalid file is upload.");
		}
	}
	
	
	//アップロードファイル名を取得するメソッド
	private String getFileName(Part part) {
		String result = null;
		for(String disp : part.getHeader("Context-Disposition").split(";")) {
			disp = disp.trim();
			if(disp.startsWith("filename")) {
				result = disp.substring(disp.indexOf("=") + 1).trim();
				result = result.replace("\"", "").replace("\\", "/");
				int pos = result.lastIndexOf("/");
				if(pos >= 0) {
					result = result.substring(pos + 1);
				}
				break;
			}
		}
		return result;
	}
	
	//アップロードファイルの種類が許可されたものであるかチェック
	private boolean isValidFile(String name) {
		if(name != null) {
			String[] perms = {"gif", "jpg", "jpeg", "png"};
			String[] names = name.split("\\.");
			for(String perm: perms) {
				if(perm.equals(names[names.length-1])) {
					return true;
				}
			}
		}
		return false;
	}

}
*/
package to.msn.wings.chap6;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UploadServlet
 */
@MultipartConfig(location="C:/tmp/")
@WebServlet("/chap6/UploadServlet")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part part = request.getPart("file");
        String name = this.getFileName(part);
        if(this.isValidFile(name)) {
            part.write(getServletContext().getRealPath("/WEB-INF/data/") + name);
            System.out.println(getServletContext().getRealPath("/WEB-INF/data/") + name);
            response.sendRedirect("upload.jsp");
        } else {
            response.getWriter().println("Invalid file is uploaded.");
        }
    }
    
    private String getFileName(Part part) {
        String result = null;
        for(String disp : part.getHeader("Content-Disposition").split(";")) {
            disp = disp.trim();
            if(disp.startsWith("filename")) {
                result = disp.substring(disp.indexOf("=") + 1).trim();
                result = result.replace("\"", "").replace("\\", "/");
                int pos = result.lastIndexOf("/");
                if(pos >= 0) {
                    result = result.substring(pos + 1);
                }
                break;
            }
        }
        return result;
    }	// getFileName end
    
    private boolean isValidFile(String name) {
        if ( name != null) {
            String[] perms = { "gif", "jpg", "jpeg", "png" };
            String[] names = name.split("\\.");
            for (String perm : perms) {
                if(perm.equals(names[names.length -1])) {
                    return true;
                }
            }
        }
        return false;
    } // inValidFile end

}
