
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
Statement statement=connection.createStatement();
String sql ="select * from spmdash_addproject where id="+id;
ResultSet resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<h1>Update data from database in jsp</h1>
<form method="post" action="update_process.jsp">
Id
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
Project Name
<input type="text" name="Pname" value="<%=resultSet.getString("Project_name") %>">
<br>
Purpose:<br>
<input type="text" name="purpose" value="<%=resultSet.getString("PurPose_of_the_Project") %>">
<br>
Starting Date:<br>
<input type="date" name="sdate" value="<%=resultSet.getString("Starting_Date") %>">
<br><br>
Finish Date:<br>
<input type="date" name="fdate" value="<%=resultSet.getString("Finish_Date") %>">
<br><br>
Task Status
<input type="text" name="taskstatus" value="<%=resultSet.getString("Task_Status") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}%>





                

</body>
</html>