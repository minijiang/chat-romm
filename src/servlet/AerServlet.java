package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.IV_OutInvoice;

public class AerServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AerServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("uname");
		String name1=request.getParameter("uname1");

			int    names=seachName(name,name1);

		System.out.println(names+"--------------------ssasas");
		out.print(names);
	}

	private int  seachName(String name,String name1) {
		StringBuilder sb=new StringBuilder();
		Connection con = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
        int  nn =0;
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection("jdbc:sqlserver://localhost:49326;DatabaseName=tap_water","sa","123");
			String sql = "select c.InvoiceType from IV_OutInvoice a, SY_Emp b ,IV_InInvoice c where a.EmpID=b.ID and a.InID=c.ID and  StartNo=? and EndNo=?";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, name1);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				nn=rs.getInt(1);
			}
		}catch(Exception e){			
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				psmt.close();
				con.close();
			}catch(Exception ex){
				ex.printStackTrace();
			}
		}
		return nn;
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
