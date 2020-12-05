

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SPMlogin")
public class SPMlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SPMlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("name");
		String s2=request.getParameter("pass");
		PrintWriter out=response.getWriter();
		ResultSet set;
		Connection con;
		PreparedStatement st;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			st=con.prepareStatement("select * from spmlogin where username=? and password=?");
			st.setString(1, s1);
			st.setString(2, s2);
			set=st.executeQuery();
			
			if(set.next())
			{
				RequestDispatcher rs=request.getRequestDispatcher("SPMDash.jsp");
				rs.forward(request, response);
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
