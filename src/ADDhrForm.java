

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


@WebServlet("/ADDhrForm")
public class ADDhrForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ADDhrForm() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String s1=request.getParameter("Ename");
		String s2=request.getParameter("cont");
		String s3=request.getParameter("salary");
		String s4=request.getParameter("date");
		String s5=request.getParameter("dob");
		String s6=request.getParameter("loginid");
		String s7=request.getParameter("pass");
		
		String s8=request.getParameter("depart");
		
		String s9=request.getParameter("team");
		
		String s10=request.getParameter("quali");
		
		
		
		
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement st;
		int i =0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			st=con.prepareStatement("insert into hraddform1(Ename,cont,salary,date,dob,loginid,pass,depart,team,quali)values(?,?,?,?,?,?,?,?,?,?)");
		
			st.setString(1, s1);
			st.setString(2,s2);
			st.setString(3, s3);
			st.setString(4,s4);
			st.setString(5, s5); 
			st.setString(6, s6);
			st.setString(7, s7);
			st.setString(8, s8);
			st.setString(9, s9);
			st.setString(10, s10);
			
		    			
			i=st.executeUpdate();
		}
		catch(Exception es)
		{
		es.printStackTrace();	
		}
		if(i>0)
		{
			HttpSession session=request.getSession();
			session.setAttribute("msg", "data Successfully Inserted");
			response.sendRedirect("tables-basic.jsp");
		}
		else
		{
			out.print("fail");	
		}
		
		
	}

}
