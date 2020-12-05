

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


@WebServlet("/SPMDash_addproject")
public class SPMDash_addproject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SPMDash_addproject() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String s1=request.getParameter("Pname");
		String s2=request.getParameter("purpose");
		String s3=request.getParameter("sdate");
		String s4=request.getParameter("fdate");
		String s5=request.getParameter("taskstatus");
		
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement st;
		int i =0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			st=con.prepareStatement("insert into spmdash_addproject(Project_name,Purpose_of_the_Project,Starting_Date,Finish_Date,Task_Status) values(?,?,?,?,?)");
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
			out.print("success");
		}
		else
		{
			out.print("fail");	
		}
		
	
	}

}
