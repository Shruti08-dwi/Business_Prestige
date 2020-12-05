

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
import javax.servlet.http.HttpSession;


@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String s1=request.getParameter("firstname");
		String s2=request.getParameter("lastname");
		String s3=request.getParameter("subject");
		String s4=request.getParameter("email");
		String s5=request.getParameter("message");
		
		
		
		
		
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement st;
		int i =0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			st=con.prepareStatement("insert into contactus(firstname,lastname,subject,email,message)values(?,?,?,?,?)");
		
			st.setString(1, s1);
			st.setString(2,s2);
			st.setString(3, s3);
			st.setString(4,s4);
			st.setString(5, s5); 
			
			
		    			
			i=st.executeUpdate();
		}
		catch(Exception es)
		{
		es.printStackTrace();	
		}
		if(i>0)
		{
			HttpSession session=request.getSession();
			session.setAttribute("msg", "Thanku for visiting us  ");
			response.sendRedirect("contact.jsp");
		}
		else
		{
			out.print("fail");	
		}
		
		
	
	}

}
