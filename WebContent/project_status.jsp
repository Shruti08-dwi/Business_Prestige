<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><br><br><br><br><br>
<center>
<h1 style="color: blue;">Project Completion Report</h1>
<table border="1" width=100%>
<tr>
<th>Project Disp </th>
<th>Project Status</th>
</tr>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from status");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String s1=set.getString("DESCRIPTION");
		String s2=set.getString("Status");
		%>
		<tr>
		<td><%=s1 %></td>
		<td><%=s2%>
		</tr>
		<%
		
	}}

catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
</center>
</body>
</html>