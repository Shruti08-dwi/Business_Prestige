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
String Project_name=request.getParameter("Pname");
String Purpose_of_the_Project=request.getParameter("purpose");
String Starting_Date=request.getParameter("sdate");
String Finish_Date=request.getParameter("fdate");
String Task_Status=request.getParameter("taskstatus");

try
{
Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps = con.prepareStatement("Update spmdash_addproject set Project_name=?,Purpose_of_the_Project=?,Starting_Date=?,Finish_Date=?,Task_Status=? where id="+id);

ps.setString(1, Project_name);
ps.setString(2, Purpose_of_the_Project);
ps.setString(3, Starting_Date);
ps.setString(4, Finish_Date);
ps.setString(5, Task_Status);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
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