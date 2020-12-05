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
String PMName=request.getParameter("PMname");
String Speciliazation=request.getParameter("spec");
String Contact=request.getParameter("cont");
String Official_MailID=request.getParameter("mailid");

try
{
Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps = con.prepareStatement("Update spmdash_promanadd set PMName=?,Speciliazation=?,Contact=?,Official_MailID=? where id="+id);

ps.setString(1, PMName);
ps.setString(2, Speciliazation);
ps.setString(3, Contact);
ps.setString(4, Official_MailID);
int i = ps.executeUpdate();
if(i > 0)
{
 session=request.getSession();
	session.setAttribute("msg", "Record Updated Successfully");
	response.sendRedirect("SPMDash_promamlist.jsp");

}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}

%>
</body>
</html>