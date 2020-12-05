<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="zxx">

<head>
	<title></title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Edulearn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->

	<!-- Custom-Files -->
	<!-- Bootstrap-Core-Css -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Style-Css -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Font-Awesome-Icons-Css -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	 rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //Web-Fonts -->

</head>

<body>
	<!-- header -->
	<header>
		<!-- top header -->
		<div class="top-head-w3ls py-2 bg-dark">
			<div class="container">
				<div class="row">
					<h1 class="text-capitalize text-white col-7">
						<i class="#"></i>welcome To Business Prestige</h1>
					
				</div>
			</div>
		</div>
		<!-- //top header -->
		<!-- middle header -->
		<div class="middle-w3ls-nav py-2">
			<div class="container">
				<div class="row">
					<a class="logo font-italic font-weight-bold col-lg-4 text-lg-left text-center" href="index.jsp">Business Prestige</a>
					<div class="col-lg-8 right-info-agiles mt-lg-0 mt-sm-3 mt-1">
						<div class="row">
							<div class="col-sm-4 nav-middle">
								<i class="far fa-envelope-open text-center mr-md-4 mr-sm-2 mr-4"></i>
								<div class="agile-addresmk">
									<p>
										<span class="font-weight-bold text-dark">Mail Us</span>
										<a href="dwivedishruti44@gmail.com">dwivedishruti44@gmail.com</a>
									</p>
								</div>
							</div>
							<div class="col-sm-4 col-6 nav-middle mt-sm-0 mt-2">
								<i class="fas fa-phone-volume text-center mr-md-4 mr-sm-2 mr-4"></i>
								<div class="agile-addresmk">
									<p>
										<span class="font-weight-bold text-dark">Call Us</span>
										+91-9584144499
									</p>
								</div>
							</div>
							<div class="col-sm-4 col-6 top-login-butt text-right mt-sm-2">
								<a href="contact.jsp" class="button-head-mow3 text-white">Contact us</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //middle header -->
	</header>
	<!-- //header -->

	<!-- banner -->
	<div class="banner-agile-2">
		<!-- navigation -->
		<div class="navigation-w3ls">
			<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-nav">
				<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				 aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
					<ul class="navbar-nav justify-content-center">
						<li class="nav-item">
							<a class="nav-link text-white" href="index.jsp">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-white" href="about.jsp">About Us</a>
						</li>
						
						
						<li class="nav-item">
							<a class="nav-link text-white" href="blog.jsp">Blog</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-white" href="gallery.jsp">Gallery</a>
						</li>
						
					</ul>
				</div>
			</nav>
		</div>
		<!-- //navigation -->
	</div>
	
	<!-- //banner -->

	<!-- //banner -->
	
	
	<!-- breadcrumb -->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="index.jsp">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">Our Employees</li>
		</ol>
	</nav>
	<!-- breadcrumb -->
	<!-- //banner -->
	

	<!-- course-->
	<div class="course-w3ls py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-bold text-dark text-center mb-sm-5 mb-4">Our -
				<span class="font-weight-bold">Employees</span>
			</h3>
			<div class="row cource-list-agile pt-4">
				<div class="col-lg-7 agile-course-main">
					<div class="w3ls-cource-first">
						<img src="images/1.png" alt="" class="img-fluid img-poiscour mx-auto d-block mt-2"></img>
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Mr. Deepak Gupta</h3>
							<p class="mt-3 mb-4 pr-lg-5">He has a great experience since five year, He has worked for HCL technology.  </p>
							<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from hraddform1 where id=2");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String name=set.getString("Ename");
		String cont=set.getString("cont");
		String date=set.getString("date");
		String dob=set.getString("dob");
		String depart=set.getString("depart");
		String quali=set.getString("quali");
		%>
							
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-user mr-3"></i><%=name %></li>
								<li class="my-3">
									<i class="fas fa-phone mr-3"></i><%=cont %></li>
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=date %></li>
									<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dob %></li>
									<li>
									<i class="fas fa-users mr-3"></i><%=depart %></li>
									<li>
									<i class="fas fa-book mr-3"></i><%=quali %></li>
							</ul>
						</div>
						<%
						
	}} 
							catch(Exception e)
						{
								e.printStackTrace();
						}
							
							%>
						
										</div>
				</div>
				
	
				<div class="col-lg-5 agile-course-main-2 mt-4">
					<img src="images/n2.jpg" alt="" class="img-fluid">
				</div>
				<div class="buttons-w3ls">
					<a class="btn button-cour-w3ls text-white" href="#" role="button">Learn More</a>
					
				</div>
			</div>
			
			
			<div class="row cource-list-agile cource-list-agile-2">
				<div class="col-lg-5 agile-course-main-3 mt-4">
					<img src="images/n1.jpg" alt="" class="img-fluid">
				</div>
				<div class="col-lg-7 agile-course-main text-right">
					<div class="w3ls-cource-first">
						<img src="images/2.png" alt="" class="img-fluid img-poiscour mx-auto d-block mt-2"></img>
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Shruti Dwivedi </h3>
							<p class="mt-3 mb-4 pl-lg-4">She is wonderful designer as well as coder, she has worked for TCS  </p>
							<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from hraddform1 where id=3");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String name=set.getString("Ename");
		String cont=set.getString("cont");
		String date=set.getString("date");
		String dob=set.getString("dob");
		String depart=set.getString("depart");
		String quali=set.getString("quali");
		%>
							
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-user mr-3"></i><%=name %></li>
								<li class="my-3">
									<i class="fas fa-phone mr-3"></i><%=cont %></li>
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=date %></li>
									<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dob %></li>
									<li>
									<i class="fas fa-users mr-3"></i><%=depart %></li>
									<li>
									<i class="fas fa-book mr-3"></i><%=quali %></li>
							</ul>
						</div>
						<%
						
	}} 
							catch(Exception e)
						{
								e.printStackTrace();
						}
							
							%>
						
						</div>
					</div>
				
				<div class="buttons-w3ls-2">
					<a class="btn button-cour-w3ls text-white" href="#" role="button">Learn More</a>
					
				</div>
			</div>
			
			<div class="row cource-list-agile pt-4">
				<div class="col-lg-7 agile-course-main">
					<div class="w3ls-cource-first">
						<img src="images/1.png" alt="" class="img-fluid img-poiscour mx-auto d-block mt-2"></img>
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Monika Sharma</h3>
							<p class="mt-3 mb-4 pr-lg-5">She is wonderful coder, she has worked for IBM.</p>
							<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from hraddform1 where id=6");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String name=set.getString("Ename");
		String cont=set.getString("cont");
		String date=set.getString("date");
		String dob=set.getString("dob");
		String depart=set.getString("depart");
		String quali=set.getString("quali");
		%>
							
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-user mr-3"></i><%=name %></li>
								<li class="my-3">
									<i class="fas fa-phone mr-3"></i><%=cont %></li>
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=date %></li>
									<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dob %></li>
									<li>
									<i class="fas fa-users mr-3"></i><%=depart %></li>
									<li>
									<i class="fas fa-book mr-3"></i><%=quali %></li>
							</ul>
						</div>
						<%
						
	}} 
							catch(Exception e)
						{
								e.printStackTrace();
						}
							
							%>
						</div>
					</div>
				
				<div class="col-lg-5 agile-course-main-2 mt-4">
					<img src="images/am3.jpg" alt="" class="img-fluid">
				</div>
				<div class="buttons-w3ls">
					<a class="btn button-cour-w3ls text-white" href="#" role="button">Learn More</a>
					
				</div>
			</div>
			
			
			
			<div class="row cource-list-agile cource-list-agile-2">
				<div class="col-lg-5 agile-course-main-3 mt-4">
					<img src="images/am1.jpg" alt="" class="img-fluid">
				</div>
				<div class="col-lg-7 agile-course-main text-right">
					<div class="w3ls-cource-first">
						<img src="images/2.png" alt="" class="img-fluid img-poiscour mx-auto d-block mt-2"></img>
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Twinkle Verma</h3>
							<p class="mt-3 mb-4 pl-lg-4">She has worked for accenture. </p>
							<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from hraddform1 where id=7");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String name=set.getString("Ename");
		String cont=set.getString("cont");
		String date=set.getString("date");
		String dob=set.getString("dob");
		String depart=set.getString("depart");
		String quali=set.getString("quali");
		%>
							
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-user mr-3"></i><%=name %></li>
								<li class="my-3">
									<i class="fas fa-phone mr-3"></i><%=cont %></li>
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=date %></li>
									<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dob %></li>
									<li>
									<i class="fas fa-users mr-3"></i><%=depart %></li>
									<li>
									<i class="fas fa-book mr-3"></i><%=quali %></li>
							</ul>
						</div>
						
						<%
						
	}} 
							catch(Exception e)
						{
								e.printStackTrace();
						}
							
							%>
						</div>
					</div>
				
				<div class="buttons-w3ls-2">
					<a class="btn button-cour-w3ls text-white" href="#" role="button">Learn More</a>
					
				</div>
			</div>
			
			
			<div class="row cource-list-agile pt-4">
				<div class="col-lg-7 agile-course-main">
					<div class="w3ls-cource-first">
						<img src="images/1.png" alt="" class="img-fluid img-poiscour mx-auto d-block mt-2"></img>
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Saloni Agrawal</h3>
							<p class="mt-3 mb-4 pr-lg-5">She is wonderful designer as well as coder, she has worked for TCS</p>
							<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from hraddform1 where id=17");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String name=set.getString("Ename");
		String cont=set.getString("cont");
		String date=set.getString("date");
		String dob=set.getString("dob");
		String depart=set.getString("depart");
		String quali=set.getString("quali");
		%>
							
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-user mr-3"></i><%=name %></li>
								<li class="my-3">
									<i class="fas fa-phone mr-3"></i><%=cont %></li>
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=date %></li>
									<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dob %></li>
									<li>
									<i class="fas fa-users mr-3"></i><%=depart %></li>
									<li>
									<i class="fas fa-book mr-3"></i><%=quali %></li>
							</ul>
						</div>
						<%
						
	}} 
							catch(Exception e)
						{
								e.printStackTrace();
						}
							
							%>
						</div>
					</div>
			
				<div class="col-lg-5 agile-course-main-2 mt-4">
					<img src="images/am2.jpg" alt="" class="img-fluid">
				</div>
				<div class="buttons-w3ls">
					<a class="btn button-cour-w3ls text-white" href="#" role="button">Learn More</a>
					
				</div>
			</div>
			
			
			<div class="row cource-list-agile cource-list-agile-2">
				<div class="col-lg-5 agile-course-main-3 mt-4">
					<img src="images/am4.jpg" alt="" class="img-fluid">
				</div>
				<div class="col-lg-7 agile-course-main text-right">
					<div class="w3ls-cource-first">
						<img src="images/2.png" alt="" class="img-fluid img-poiscour mx-auto d-block mt-2"></img>
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Sudhir Dwivedi</h3>
							<p class="mt-3 mb-4 pl-lg-4">He has worked for IBM ,TCS .</p>
							<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from hraddform1 where id=12");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String name=set.getString("Ename");
		String cont=set.getString("cont");
		String date=set.getString("date");
		String dob=set.getString("dob");
		String depart=set.getString("depart");
		String quali=set.getString("quali");
		%>
							
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-user mr-3"></i><%=name %></li>
								<li class="my-3">
									<i class="fas fa-phone mr-3"></i><%=cont %></li>
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=date %></li>
									<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dob %></li>
									<li>
									<i class="fas fa-users mr-3"></i><%=depart %></li>
									<li>
									<i class="fas fa-book mr-3"></i><%=quali %></li>
							</ul>
						</div>
						<%
						
	}} 
							catch(Exception e)
						{
								e.printStackTrace();
						}
							
							%>
						</div>
					</div>
			
				<div class="buttons-w3ls-2">
					<a class="btn button-cour-w3ls text-white" href="#" role="button">Learn More</a>
					
				</div>
			</div>
			
			
			
			<div class="row cource-list-agile pt-4">
				<div class="col-lg-7 agile-course-main">
					<div class="w3ls-cource-first">
						<img src="images/1.png" alt="" class="img-fluid img-poiscour mx-auto d-block mt-2"></img>
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Ankita Sharma</h3>
							<p class="mt-3 mb-4 pr-lg-5">She is wonderful designer as well as coder, she has worked for TCS</p>
							<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from hraddform1 where id=16");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String name=set.getString("Ename");
		String cont=set.getString("cont");
		String date=set.getString("date");
		String dob=set.getString("dob");
		String depart=set.getString("depart");
		String quali=set.getString("quali");
		%>
							
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-user mr-3"></i><%=name %></li>
								<li class="my-3">
									<i class="fas fa-phone mr-3"></i><%=cont %></li>
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=date %></li>
									<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dob %></li>
									<li>
									<i class="fas fa-users mr-3"></i><%=depart %></li>
									<li>
									<i class="fas fa-book mr-3"></i><%=quali %></li>
							</ul>
						</div>
						<%
						
	}} 
							catch(Exception e)
						{
								e.printStackTrace();
						}
							
							%>
						</div>
					</div>
			
				<div class="col-lg-5 agile-course-main-2 mt-4">
					<img src="images/am2.jpg" alt="" class="img-fluid">
				</div>
				<div class="buttons-w3ls">
					<a class="btn button-cour-w3ls text-white" href="#" role="button">Learn More</a>
				
				</div>
			</div>
		
		
		
		
		<div class="row cource-list-agile cource-list-agile-2">
				<div class="col-lg-5 agile-course-main-3 mt-4">
					<img src="images/am4.jpg" alt="" class="img-fluid">
				</div>
				<div class="col-lg-7 agile-course-main text-right">
					<div class="w3ls-cource-first">
						<img src="images/2.png" alt="" class="img-fluid img-poiscour mx-auto d-block mt-2"></img>
						<div class="px-md-5 px-4  pb-md-5 pb-4">
							<h3 class="text-dark">Vipin Vishwakarma</h3>
							<p class="mt-3 mb-4 pl-lg-4">He has worked for IBM ,TCS .</p>
							<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from hraddform1 where id=14");
	ResultSet set=ps.executeQuery();
	while(set.next())
	{
		String name=set.getString("Ename");
		String cont=set.getString("cont");
		String date=set.getString("date");
		String dob=set.getString("dob");
		String depart=set.getString("depart");
		String quali=set.getString("quali");
		%>
							
							<ul class="list-unstyled text-capitalize">
								<li>
									<i class="fas fa-user mr-3"></i><%=name %></li>
								<li class="my-3">
									<i class="fas fa-phone mr-3"></i><%=cont %></li>
								<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=date %></li>
									<li>
									<i class="fas fa-calendar-alt mr-3"></i><%=dob %></li>
									<li>
									<i class="fas fa-users mr-3"></i><%=depart %></li>
									<li>
									<i class="fas fa-book mr-3"></i><%=quali %></li>
							</ul>
						</div>
						<%
						
	}} 
							catch(Exception e)
						{
								e.printStackTrace();
						}
							
							%>
						</div>
					</div>
			
				<div class="buttons-w3ls-2">
					<a class="btn button-cour-w3ls text-white" href="#" role="button">Learn More</a>
					
				</div>
			</div>
		
		
		</div>
	</div>
	<!-- //course-->

	

	

	
	<!-- footer -->
	<footer>
		<div class="container py-4">
			<div class="row py-xl-5 py-sm-3">
				<div class="col-lg-6 " id="map">
					<h2 class="contact-title text-capitalize text-white font-weight-light mb-sm-4 mb-3">our
						<span class="font-weight-bold">directions</span>
					</h2>
					<iframe src="https://www.google.com/maps/search/indore+industry+house+palasia+square/@22.7339597,75.8870991,15z/data=!3m1!4b1"></iframe>
					<div class="conta-posi-w3ls p-4 rounded">
						<h5 class="text-white font-weight-bold mb-3">Address</h5>
						<p>452001 MIG colony Palasia,Indore
							<span>Palasia,</span> Indore, India</p>
					</div>
				</div>
				<div class="col-lg-6 contact-agileits-w3layouts mt-lg-0 mt-4">
					<h4 class="contact-title text-capitalize text-white font-weight-light mb-sm-4 mb-3">get in
						<span class="font-weight-bold">touch</span>
					</h4>
					<p class="conta-para-style border-left pl-4">If you have any questions about the services we provide simply use the form below. We try and respond to all queries
						and comments within 24 hours.</p>
					<div class="subscribe-w3ls my-xl-5 my-4">
						<h6 class="text-white text-capitalize mb-4">subscribe our newsletter</h6>
						<form action="#" method="post" class="subscribe_form">
							<input class="form-control" type="email" name="email" placeholder="Enter your email..." required="">
							<button type="submit" class="btn btn-primary submit">Submit</button>
						</form>
					</div>
					<p class="para-agileits-w3layouts text-white">
						<i class="fas fa-map-marker pr-3"></i>452001 MIG colony,Palasia</p>
					<p class="para-agileits-w3layouts text-white my-sm-3 my-2">
						<i class="fas fa-phone pr-3"></i>+91-9584144499</p>
					<p class="para-agileits-w3layouts">
						<i class="far fa-envelope-open pr-2"></i>
						<a href="dwivedishruti44@gmail.com" class=" text-white">dwivedishruti44@gmail.com</a>
					</p>
				</div>
			</div>
		</div>
		
	</footer>
	<!-- //footer -->


	<!-- Js files -->
	<!-- JavaScript -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->
	<script src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- numscroller-js-file -->
	<script src="js/numscroller-1.0.js"></script>
	<!-- //numscroller-js-file -->

	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->

	<!-- move-top -->
	<script src="js/move-top.js"></script>
	<!-- easing -->
	<script src="js/easing.js"></script>
	<!--  necessary snippets for few javascript files -->
	<script src="js/edulearn.js"></script>

	<!-- //Js files -->
<script type="text/javascript">

	function initMap(){
			//map options
			var options = {
				zoom:12,
				center:{lat:22.7196,lng:75.8577}
			}

			//new map
			var map = new google.maps.Map(document.getElementById('map'),options);

/*
			//add marker
			var marker = new google.maps.Marker({
				position:{lat:22.7244,lng:75.8839},
				map:map
			});

			//tool tip	info window

			var infoWindow = new google.maps.InfoWindow({
				content:'<h1>Palasiya Square</h1>'
			});

			marker.addListener('click',function(){
				infoWindow.open(map, marker);
			});

			*/

			addMarker({
				coords:{lat:22.7244,lng:75.8839},
				content:'<h1>Palasiya Square</h1>'
			});
			addMarker({
				coords:{lat:22.7185,lng:75.8547},
				content:'<h1>Industry House Palasiya</h1>'
			});

			//Add marker function

			function addMarker(props){

				var marker = new google.maps.Marker({
				position:props.coords,
				map:map
				});

				if (props.content) {

					var infoWindow = new google.maps.InfoWindow({
					content:props.content
					});

					marker.addListener('click',function(){
					infoWindow.open(map, marker);
					});

				}

			}
	}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDb3DqSnCpmX3HmsuCBklxazur1vU42N_8&callback=initMap" async defer>	
</script>
</body>

</html>