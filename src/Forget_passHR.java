

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forget_passHR
 */
@WebServlet("/Forget_passHR")
public class Forget_passHR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forget_passHR() {
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
		doGet(request, response);
		
		String s1=request.getParameter("email");
		String s2=request.getParameter("pass");
		String s3=request.getParameter("repass");
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement st;
		int i=0;
		if(s2.equals(s3))
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
				st=con.prepareStatement("update hrlogin set password='"+s2+"' where mail='"+s1+"'");
				i=st.executeUpdate();
				if(i>0)
				{
					out.println("update");
				}
				else
				{
					out.println("not update");	
				}
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		}
			

	

	}

}
