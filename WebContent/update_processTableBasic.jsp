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
<%
String id = request.getParameter("id");
String Ename=request.getParameter("Ename");
String cont=request.getParameter("cont");
String salary=request.getParameter("salary");
String date=request.getParameter("date");
String dob=request.getParameter("dob");
String loginid=request.getParameter("loginid");
String pass=request.getParameter("pass");
String depart=request.getParameter("depart");
String team=request.getParameter("team");
String quali=request.getParameter("quali");


try
{
Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps = con.prepareStatement("Update hraddform1 set Ename=?,cont=?,salary=?,date=?,dob=?,loginid=?,pass=?,depart=?,team=?,quali=? where id="+id);

ps.setString(1,Ename );
ps.setString(2, cont);
ps.setString(3, salary);
ps.setString(4, date);
ps.setString(5,dob);
ps.setString(6,loginid );
ps.setString(7, pass);
ps.setString(8, depart);
ps.setString(9, team);
ps.setString(10,quali);
int i = ps.executeUpdate();
if(i > 0)
{
session=request.getSession();
session.setAttribute("msg", "data updated successfully");
response.sendRedirect("tables-basic.jsp");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{

out.println(sql);
}

%>
</body>
</html>