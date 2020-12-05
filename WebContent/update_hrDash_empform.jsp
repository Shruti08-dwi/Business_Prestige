<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">

    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

<style type="text/css" media="Screen">
.card, select {
    border: 1px solid #333333;
    background : url(images/m5.jpg);
    font: 12px Verdana, sans-serif;
}

    </style>


</head>

<body>
    <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="AdminDash.jsp">ADMIN</a>
                <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="hrDash.jsp"> <i class="menu-icon fa fa-home"></i>Home</a>
                    </li>
                    
                    <li class="menu-item-has-children active dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Employees ADD</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><a href="hrDash_empaddform.jsp">Form</a></li>
                            
                        </ul>
                    </li>
                    
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Display Table</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="hrDash_emptable.jsp">Emp Table</a></li>
                            
                        </ul>
                    </li>
                    
                    
                    

                                
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->


    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>

                        <div class="dropdown for-notification">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <span class="count bg-danger">5</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="notification">
                                <p class="red">You have 3 Notification</p>
                                <a class="dropdown-item media bg-flat-color-1" href="#">
                                <i class="fa fa-check"></i>
                                <p>Server #1 overloaded.</p>
                            </a>
                                <a class="dropdown-item media bg-flat-color-4" href="#">
                                <i class="fa fa-info"></i>
                                <p>Server #2 overloaded.</p>
                            </a>
                                <a class="dropdown-item media bg-flat-color-5" href="#">
                                <i class="fa fa-warning"></i>
                                <p>Server #3 overloaded.</p>
                            </a>
                            </div>
                        </div>

                        <div class="dropdown for-message">
                            <button class="btn btn-secondary dropdown-toggle" type="button"
                                id="message"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="ti-email"></i>
                                <span class="count bg-primary">9</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="message">
                                <p class="red">You have 4 Mails</p>
                                <a class="dropdown-item media bg-flat-color-1" href="#">
                                <span class="photo media-left"><img alt="avatar" src="images/avatar/1.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Jonathan Smith</span>
                                    <span class="time float-right">Just now</span>
                                        <p>Hello, this is an example msg</p>
                                </span>
                            </a>
                                <a class="dropdown-item media bg-flat-color-4" href="#">
                                <span class="photo media-left"><img alt="avatar" src="images/avatar/2.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Jack Sanders</span>
                                    <span class="time float-right">5 minutes ago</span>
                                        <p>Help</p>
                                </span>
                            </a>
                                <a class="dropdown-item media bg-flat-color-5" href="#">
                                <span class="photo media-left"><img alt="avatar" src="images/avatar/3.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Cheryl Wheeler</span>
                                    <span class="time float-right">10 minutes ago</span>
                                        <p>Hello, this is an example msg</p>
                                </span>
                            </a>
                                <a class="dropdown-item media bg-flat-color-3" href="#">
                                <span class="photo media-left"><img alt="avatar" src="images/avatar/4.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Rachel Santos</span>
                                    <span class="time float-right">15 minutes ago</span>
                                        <p>Help</p>
                                </span>
                            </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa-user"></i> My Profile</a>

                            
                            <a class="nav-link" href="Logoutadmin.jsp"><i class="fa fa-power-off"></i> Logout</a>
                        </div>
                    </div>

                    <div class="language-select dropdown" id="language-select">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
                            <i class="#"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="language">
                            <div class="dropdown-item">
                                <span class="#"></span>
                            </div>
                            <div class="dropdown-item">
                                <i class="#"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="#"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="#"></i>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </header><!-- /header -->
        <!-- Header-->
        

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Dashboard</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            
                        </ol>
                    </div>
                </div>
            </div>
        </div>

                    <!--/.col-->
        <div class="login-w3ls py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-bold text-dark text-center mb-5">Update
				<span class="font-weight-bold">Emp</span>
			</h3>
			
			         <div class="col-lg-3">
                    
                    </div>
                      <div class="col-lg-6 ">
                        <div class="card">
                            
                            <div class="card-body card-block font-weight-italic">
                            
                            
                           
                             <%
                  String id = request.getParameter("id");
                      %>
            
			<%
			try{
				Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/business","root","root");
			Statement statement=connection.createStatement();
			String sql ="select * from hr_empaddform1 where id="+id;
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
				%>
                            
                            <form action="update_processHRdashempadd.jsp" method="post">
                           
                            
                            <div class="form-group">
                           <label> 
                           ID
                           
                           </label>
                          <input type="text" placeholder="Employee ID" class="form-control" name="id" value="<%=resultSet.getString("id") %>">
                           </div>
                            
                            
                            
                            <div class="form-group">
                           <label> 
                           Employe Name
                           
                           </label>
                           <input type="text" placeholder="Employee Name" class="form-control" name="Ename" value="<%=resultSet.getString("Ename") %>">
                           </div>
                            
                                
                           <div class="form-group">
                           <label> 
                           Contact No
                           
                           </label>
                           <input type="text" placeholder="Contact no" class="form-control" name="cont" value="<%=resultSet.getString("cont") %> ">
                           </div>
                                      
                                      
                       <div class="form-group">
                       <label>
                       Salary
                       
                       </label>
                       <input type="text" placeholder="Salary" class="form-control" name="salary" value="<%=resultSet.getString("salary") %>">
                       </div>
                                            
                                            
                       
                      
                   <div class="form-group">
                   <label>Date of Joining
                   
                   </label>
                   <input type="date" placeholder="date" class="form-control" name="date"value="<%=resultSet.getString("date") %>">
                   </div>
                                                    
                                                    
                  
                 <div class="form-group">
                 <label>Date of Birth
                 
                 </label>
                 <input type="date" placeholder="D.O.B" class="form-control" name="dob"value="<%=resultSet.getString("dob") %>">
                 </div>
                  
                 
               <div class="form-group">
               <label>Login Id
               
               </label>
               <input type="text"  placeholder="Login id" class="form-control" name="loginid"value="<%=resultSet.getString("loginid") %>">
               </div>
               
                 
               <div class="form-group">
               <label>Password
               </label>
               <input type="password"  placeholder="password" class="form-control" name="pass"value="<%=resultSet.getString("pass") %>">
               </div>
               
                 
               <div class="row form-group">
               <div class="col col-md-3"><label for="department" class="form-control-label">Department
               </label>
               </div>
               <div class="col-12 col-md-9">
               <select name="depart" id="depart" class="form-control" value="<%=resultSet.getString("depart") %>">
              
               <option value="HR">HR</option>
               
               <option value="Team Leader">Team Leader</option>
               <option value="Project Manager">Project Manager</option>
               <option value="Senior Project Manager">Senior Project Manager</option>
               <option value="Employees">Employees</option>
               
               
               </select>
               </div>
               </div>
               
                <div class="row form-group">
               <div class="col col-md-3"><label for="team" class="form-control-label">Team
               </label>
               </div>
               <div class="col-12 col-md-9">
               <select name="team" id="team" class="form-control" value="<%=resultSet.getString("team") %>">
              
               <option value="HR">HR</option>
               <option value="Team Leader">Team Leader</option>
               <option value="Project Manager">Project Manager</option>
               <option value="Senior Project Manager">Senior Project Manager</option>
               <option value="Employees">Employees</option>
               
               
               </select>
               </div>
               </div>
               
                <div class="row form-group">
                <div class="col col-md-3"><label for="qualification" class="form-control-label">Qualification
               </label>
               </div>
               <div class="col-12 col-md-9">
               <select name="quali" id="quali" class="form-control" value="<%=resultSet.getString("quali") %>">
               <option value="B.TECH">B.TECH</option>
               <option value="MCA">MCA</option>
               <option value="M.Tech">M.Tech</option>
               <option value="BCA">BCA</option>
               <option value="BSC(cs)">BSC(cs)</option>
               <option value="BSC(IT)">BSC(IT)</option>
               
               </select>
               </div>
               </div>
               
               <div class="row form-group">
               <div class="col col-md-3"><label for="qualification" class="form-control-label">Desiganation
               </label>
               </div>
               <div class="col-12 col-md-9">
               <select name="Desi" id="Desi" class="form-control" value="<%=resultSet.getString("desi") %>">
               <option value="PhP dev">PhP dev</option>
               <option value="Java dev">java dev</option>
               <option value="Tester">Tester</option>
               <option value="IOS dev">IOS dev</option>
               </select>
               </div>
               </div>
                        
               <div class="form-group">
               <label>Address
               
               </label>
               <input type="text"  placeholder="Address" class="form-control" name="add" value="<%=resultSet.getString("address") %>">
               </div> 
                
                 <center>                        
               <input type="submit" value="Submit">
               </center>
           
               </form>
                </div>
                </div>
                </div>
                <div class="col-lg-3"></div>
                </div>
                </div>
                
                
                    

   			
                    
            
               <%
                }
             connection.close();
            } catch (Exception e) {
              e.printStackTrace();
              }%>

                                            
                                            
                                            
                                            

                            <script src="vendors/jquery/dist/jquery.min.js"></script>
                            <script src="vendors/popper.js/dist/umd/popper.min.js"></script>

                            <script src="vendors/jquery-validation/dist/jquery.validate.min.js"></script>
                            <script src="vendors/jquery-validation-unobtrusive/dist/jquery.validate.unobtrusive.min.js"></script>

                            <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
                            <script src="assets/js/main.js"></script>
</body>
</html>
