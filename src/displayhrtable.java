

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


@WebServlet("/displayhrtable")
public class displayhrtable extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public displayhrtable() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id;
		String Ename;
		String cont;
		String salary;
		String date;
		String dob;
		String loginid;
		String pass;
		String depart;
		String team;
		String quali;
		String add;
		
		
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement st;
		ResultSet set;
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	     st=con.prepareStatement("select * from hraddform1");
	      set=st.executeQuery();
           
			out.print("<table border=1>");
			out.print("<tr><th>id</th><th>Ename</th><th>cont</th><th>salary</th><th>date</th><th>dob</th><th>loginid</th><th>pass</th><th>depart</th><th>team</th><th>quali</th><th>add</th></tr>");
			while(set.next())
			{
				id=set.getString(1);
			Ename=set.getString(2);
			
			cont=set.getString(3);
			salary=set.getString(4);
			date=set.getString(5);
			dob=set.getString(6);
			loginid=set.getString(7);
			pass=set.getString(8);
			depart=set.getString(9);
			team=set.getString(10);
			quali=set.getString(11);
			add=set.getString(12);
			out.print("<tr><td>"+id+"</td><td>"+Ename+"</td><td>"+cont+"</td><td>"+salary+"</td><td>"+date+"</td><td>"+dob+"</td><td>"+loginid+"</td><td>"+pass+"</td><td>"+depart+"</td><td>"+team+"</td><td>"+quali+"</td><td>"+add+"</td></tr>");
			}
			out.print("</table>");
		}
		catch(Exception es)
		{
			es.printStackTrace();
		}
		

	}	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
