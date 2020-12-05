

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


@WebServlet("/empaddform")
public class ADDempForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ADDempForm() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("Fname");
		String s2=request.getParameter("Lname");
		String s3=request.getParameter("empID");
		 int EmpID=Integer.parseInt(s3);
		String s4=request.getParameter("Desi");
		String s5=request.getParameter("mobile");
		int Con=Integer.parseInt(s5);
		String s6=request.getParameter("email");
		
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement st;
		int i =0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			st=con.prepareStatement("insert into empaddform(Firstname,Lastname,EmpID,Desi,Cont,email)values(?,?,?,?,?,?)");
			st.setString(1, s1);
			st.setString(2, s2);
			st.setInt(3, EmpID);
			st.setString(4, s4);
			st.setInt(5, Con);
			st.setString(6, s6);
			i=st.executeUpdate();
		}
		catch(Exception es)
		{
		es.printStackTrace();	
		}
		if(i>0)
		{
			out.print("success");
		}
		else
		{
			out.print("fail");	
		}
		
	}

}
