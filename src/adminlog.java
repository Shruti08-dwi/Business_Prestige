

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/adminlog")
public class adminlog extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public adminlog() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("name");
		String s2=request.getParameter("pass");
		String s3=request.getParameter("phone");
		PrintWriter out=response.getWriter();
		ResultSet set;
		Connection con;
		PreparedStatement st;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			st=con.prepareStatement("select * from adminlog where username=? and password=? phone=?");
			st.setString(1, s1);
			st.setString(2, s2);
			st.setString(3, s3);
			set=st.executeQuery();
			
			if(set.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("s1", s1);
				response.sendRedirect("AdminDash.jsp");
			}
			else
			{
				out.print("invalid");
			}
		}
			catch(Exception es)
			{
				es.printStackTrace();
			}
			

	
			
	}

}
