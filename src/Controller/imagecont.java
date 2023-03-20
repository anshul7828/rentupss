package Controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Blob;

import Database.DAO;

/**
 * Servlet implementation class imagecont
 */
@WebServlet("/imagecont")
public class imagecont extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public imagecont() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Blob image = null;
		    byte[] imgData = null;
		    String id = request.getParameter("id");// here you are getting id
		    int i;
		    ResultSet rs = null;

		    try {
		      DAO obj = new DAO();
		      String sql = "SELECT photo1 FROM product where productid=?"; // here pass that id in query to get
		      java.sql.PreparedStatement ps = obj.cn.prepareStatement(sql);

		      ps.setString(1, id);
		      rs = ps.executeQuery();
		      while (rs.next()) {
		        image = (Blob) rs.getBlob("photo1");// getting image from database
		        imgData = image.getBytes(1, (int) image.length()); // extra info about image
		      }

		      response.setContentType("image/gif");// setting response type

		      OutputStream o = response.getOutputStream();

		      o.write(imgData);// sending the image to jsp page
		      o.flush();
		      o.close();

		    } catch (Exception e) {
		      e.printStackTrace();

		    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
