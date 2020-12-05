

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


@WebServlet("/SPMDash_promanadd")
public class SPMDash_promanadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SPMDash_promanadd() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("PMname");
		String s2=request.getParameter("spec");
		String s3=request.getParameter("cont");
		String s4=request.getParameter("mailid");
		
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement st;
		int i =0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			st=con.prepareStatement("insert into spmdash_promanadd(PMName,Speciliazation,Contact,Official_MailID)values(?,?,?,?)");
			st.setString(1, s1);
			st.setString(2,s2);
			st.setString(3, s3);
			st.setString(4,s4);
			
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

