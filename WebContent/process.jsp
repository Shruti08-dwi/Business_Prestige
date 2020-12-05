<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%> 
<%@page import ="java.net.URL"%>
<%@page import=" java.net.URLEncoder"%>
<%@page import ="java.security.SecureRandom"%>
<%@page import=" java.util.Random"%>
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
String name=request.getParameter("uname");
String password=request.getParameter("pswd");
String phone=request.getParameter("number");
session.setAttribute("name",name); 
session.setAttribute("password",password);
session.setAttribute("phone",phone); 
//Multiple mobiles numbers separated by comma
String mobiles = phone;
Random rand = new Random();
int otp = rand.nextInt(900000) + 100000;

//Sender ID,While using route4 sender id should be 6 characters long.
String senderId1 = URLEncoder.encode("TEST SMS");

//Your message to send, Add URL encoding here.
String message = "Your OTP is "+otp;
//define route
String state="4";
//Prepare Url
//HttpURLConnection conn = (HttpURLConnection) new URL("http://api.mVaayoo.com/mvaayooapi/MessageCompose").openConnection();

//encoding message 
String encoded_message=URLEncoder.encode(message);
//Send SMS API
String mainUrl="http://api.mVaayoo.com/mvaayooapi/MessageCompose?";
//String mainUrl="";
//Prepare parameter string 
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("user=dwivedishruti44@gmail.com:shruti");
sbPostData.append("&senderID="+senderId1);
sbPostData.append("&receipientno="+mobiles); 
sbPostData.append("&dcs=0"); 
sbPostData.append("&msgtxt="+encoded_message);
sbPostData.append("&state="+state);

//final string
mainUrl = sbPostData.toString();


HttpURLConnection conn = (HttpURLConnection) new URL(mainUrl).openConnection();
//URL myURL=null;
BufferedReader reader=null;

try
{
	session.setAttribute("otp",otp);
//prepare connection
//myURL = new URL(mainUrl);
conn.connect();
reader= new BufferedReader(new InputStreamReader(conn.getInputStream()));
String success="Your message sent sucessfully";
response.sendRedirect("otp.jsp");
//finally close connection
reader.close();  
}
catch (IOException e)
{
e.printStackTrace(); 
}
%>
</body>
</html>