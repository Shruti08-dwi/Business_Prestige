<%@page import="java.sql.*"%>
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
String uname=(String)session.getAttribute("name");
String password=(String)session.getAttribute("password");
int otp= (Integer) session.getAttribute("otp");
String otpvalue=request.getParameter("otpvalue");
int enterOtp=Integer.parseInt(otpvalue);
if(otp==enterOtp)
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/business", "root", "root");
PreparedStatement ps=conn.prepareStatement("select * from adminlog where uname='"+uname+"' and pwd='"+password+"'");
ResultSet set=ps.executeQuery();
if(set.next())
{
session=request.getSession();
session.setAttribute("d", "data successfully inserted");
		response.sendRedirect("AdminDash.jsp");
}
else
{
	out.print("Enter Correct UserName or Password");
	response.sendRedirect("adminlog.jsp");
}
}
catch(Exception e)
{
e.printStackTrace();
}
}
else
{
out.println("OTP not matched");
}
%>
</body>
</html>