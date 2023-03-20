package Controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Database.DAO;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
@MultipartConfig(maxFileSize = 16177215)
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
	    try {
	      String pname = request.getParameter("pname");
	      String desc = request.getParameter("desc");
	      String price = request.getParameter("price");
	      String discount = request.getParameter("discount");
	      String city = request.getParameter("city");
	      String category = request.getParameter("category");
	      HttpSession session = request.getSession();
	      String email = session.getAttribute("email").toString();

	      InputStream inputStream = null; // input stream of the upload file
	      InputStream inputStream1 = null;
	      InputStream inputStream2 = null;

	      // obtains the upload file part in this multipart request
	      Part filePart = request.getPart("ph1");
	      if (filePart != null) {
	        // obtains input stream of the upload file
	        inputStream = filePart.getInputStream();
	      }
	      Part filePart2 = request.getPart("ph2");
	      if (filePart2 != null) {
	        inputStream1 = filePart2.getInputStream();
	      }
	      Part filePart3 = request.getPart("ph3");
	      if (filePart3 != null) {
	        inputStream2 = filePart3.getInputStream();
	      }

	      DAO obj = new DAO();

	      String sql = "insert into product(pname,description,priceperday,discount,"
	          + "postedby,city,categoryname,photo1,photo2,photo3) " + " values(?,?,?,?,?,?,?,?,?,?)";
	      java.sql.PreparedStatement statement = obj.cn.prepareStatement(sql);
	      statement.setString(1, pname);
	      statement.setString(2, desc);
	      statement.setString(3, price);
	      statement.setString(4, discount);
	      statement.setString(5, email);
	      statement.setString(6, city);
	      statement.setString(7, category);
	      if (inputStream != null) {
	        // fetches input stream of the upload file for the blob column
	        statement.setBlob(8, inputStream);
	        statement.setBlob(9, inputStream1);
	        statement.setBlob(10, inputStream2);
	      }
	      // sends the statement to the database server
	      int row = statement.executeUpdate();
	      if (row > 0) {
	        String message = "File uploaded and saved into database";
	        response.sendRedirect("Userenter.jsp?m=" + message);
	      }
	    } catch (Exception ex) {
	      String message = "ERROR: " + ex.getMessage();
	      ex.printStackTrace();
	      out.println(message);
	    }
	}

}
