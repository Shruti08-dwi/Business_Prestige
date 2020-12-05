<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="1">
<tr>
<th>Technology</th>
<th>Description</th>
</tr>
<%     
        String s1=request.getParameter("name");
		String s2=request.getParameter("pass");
		
		ResultSet set;
		Connection con;
		PreparedStatement st;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			st=con.prepareStatement("select Tech,DESCRIPTION from task where PMName='"+s1+"' and Emp_Pwd='"+s2+"'");
		
			set=st.executeQuery();
			
			while(set.next())
			{
				String tech=set.getString("Tech");
				String dis=set.getString("DESCRIPTION");
			%>
			<tr>
			<td><%=tech %></td>
			<td><%=dis %></td>
			</tr>
			<%
			}}
			
			
			catch(Exception es)
			{
				es.printStackTrace();
			}
			


%>
</table>
</center>
</body>
</html>