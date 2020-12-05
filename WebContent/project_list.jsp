
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Projct List | Adminpro - Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i,800" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css1/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css1/font-awesome.min.css">
    <!-- adminpro icon CSS
		============================================ -->
    <link rel="stylesheet" href="css1/adminpro-custon-icon.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css1/meanmenu.min.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css1/jquery.mCustomScrollbar.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css1/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css1/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="css1/data-table/bootstrap-editable.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css1/normalize.css">
    <!-- charts CSS
		============================================ -->
    <link rel="stylesheet" href="css1/c3.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css1/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js1/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body class="materialdesign">
   
            <!-- Mobile Menu end -->
            <!-- Breadcome start-->
            <div class="breadcome-area mg-b-30 des-none">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list map-mg-t-40-gl shadow-reset">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <div class="breadcome-heading">
                                            <form role="search" class="">
												<input type="text" placeholder="Search..." class="form-control">
												<a href=""><i class="fa fa-search"></i></a>
											</form>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <ul class="breadcome-menu">
                                            <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">Dashboard</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcome End-->
            <!-- stockprice, feed area end-->
            <div class="admin-dashone-data-table-area mg-b-15">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sparkline8-list shadow-reset">
                                <div class="sparkline8-hd">
                                    <div class="main-sparkline8-hd">
                                        <h1>Project List</h1>
                                        <div class="sparkline8-outline-icon">
                                            <span class="sparkline8-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                            <span><i class="fa fa-wrench"></i></span>
                                            <span class="sparkline8-collapse-close"><i class="fa fa-times"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="sparkline8-graph">
                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                        <div id="toolbar">
                                            <select class="form-control">
                                                <option value="">Export Basic</option>
                                                <option value="all">Export All</option>
                                                <option value="selected">Export Selected</option>
                                            </select>
                                        </div>
                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true" data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                            <thead>
                                                <tr>
                                                    <th data-field="state" data-checkbox="true"></th>
                                                    <th data-field="id">ID</th>
                                                    <th data-field="status">Status</th>
                                                    <th data-field="name" data-editable="true">Project</th>
                                                    <th data-field="company" data-editable="true">Company</th>
                                                    <th data-field="complete">Completed</th>
                                                    <th data-field="task" data-editable="true">Task</th>
                                                    <th data-field="date" data-editable="true">Date</th>
                                                    <th data-field="support">Participants</th>
                                                    <th data-field="action">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td></td>
                                                    <td>1</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Web Development</td>
                                                    <td>Aber Ltd.</td>
                                                    <td class="datatable-ct"><span class="pie">1/6</span>
                                                    </td>
                                                    <td>10%</td>
                                                    <td>Jul 14, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/1.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>2</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Graphic Design</td>
                                                    <td>Abitibi Inc.</td>
                                                    <td class="datatable-ct"><span class="pie">230/360</span>
                                                    </td>
                                                    <td>70%</td>
                                                    <td>fab 2, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/1.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>3</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad-bl">
                                                            <button class="btn btn-white btn-xs">Pending</button>
                                                        </div>
                                                    </td>
                                                    <td>Software Development</td>
                                                    <td>Acambis plc</td>
                                                    <td class="datatable-ct"><span class="pie">0.42/1.461</span>
                                                    </td>
                                                    <td>0%</td>
                                                    <td>Seb 5, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>4</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Woocommerce</td>
                                                    <td>ACLN Ltd.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>Oct 10, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/1.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>5</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Joomla</td>
                                                    <td>ACS-Tech Ltd.</td>
                                                    <td class="datatable-ct"><span class="pie">200,133</span>
                                                    </td>
                                                    <td>80%</td>
                                                    <td>Nov 20, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>6</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad-rd">
                                                            <button class="btn btn-white btn-xs">Unactive</button>
                                                        </div>
                                                    </td>
                                                    <td>Wordpress</td>
                                                    <td>ActFits.com Inc.</td>
                                                    <td class="datatable-ct"><span class="pie">0.42,1.051</span>
                                                    </td>
                                                    <td>0%</td>
                                                    <td>Aug 25, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>7</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Ecommerce</td>
                                                    <td>ActivCard S.A.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>July 17, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/1.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>8</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Android Apps</td>
                                                    <td>Adecco S.A.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>June 11, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>9</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Prestashop</td>
                                                    <td>AEGON N.V.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>May 9, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>10</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad-bl">
                                                            <button class="btn btn-white btn-xs">Pending</button>
                                                        </div>
                                                    </td>
                                                    <td>Game Development</td>
                                                    <td>Aerco Ltd.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>0%</td>
                                                    <td>April 5, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>11</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Angular Js</td>
                                                    <td>Agrium Inc.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>Dec 1, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>12</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Opencart</td>
                                                    <td>Air Canada</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>Jan 6, 2018</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>13</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad-rd">
                                                            <button class="btn btn-white btn-xs">Unactive</button>
                                                        </div>
                                                    </td>
                                                    <td>Education</td>
                                                    <td>Alcan Inc.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>0%</td>
                                                    <td>Feb 6, 2016</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>14</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Construction</td>
                                                    <td>Alcatel</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>Jan 6, 2016</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>15</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Real Estate</td>
                                                    <td>Alstom</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>Dec 1, 2016</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>16</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Personal Regume</td>
                                                    <td>Altarex Corp.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>May 9, 2016</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>17</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Admin Template</td>
                                                    <td>Alvarion Ltd.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>June 11, 2016</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>18</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>FrontEnd</td>
                                                    <td>Amcor Ltd.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>May 9, 2015</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>19</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Backend</td>
                                                    <td>Amdocs Ltd.</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>Feb 9, 2014</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>20</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Java Advance</td>
                                                    <td>Amersham plc</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>July 6, 2014</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/6.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/2.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>21</td>
                                                    <td>
                                                        <div class="btn-group project-list-ad">
                                                            <button class="btn btn-white btn-xs">Active</button>
                                                        </div>
                                                    </td>
                                                    <td>Jquery Advance</td>
                                                    <td>Amvescap plc</td>
                                                    <td class="datatable-ct"><span class="pie">2,7</span>
                                                    </td>
                                                    <td>15%</td>
                                                    <td>Jun 6, 2013</td>
                                                    <td>
                                                        <div class="support-list-img">
                                                            <a href="#"><img src="img/notification/3.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/4.jpg" alt="" />
                                                            </a>
                                                            <a href="#"><img src="img/notification/5.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="btn-group project-list-action">
                                                            <button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> View</button>
                                                            <button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Start-->
    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                        <p>Copyright &#169; 2018 Colorlib All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
    <!-- Chat Box Start-->
    <div class="chat-list-wrap">
        <div class="chat-list-adminpro">
            <div class="chat-button">
                <span data-toggle="collapse" data-target="#chat" class="chat-icon-link"><i class="fa fa-comments"></i></span>
            </div>
            <div id="chat" class="collapse chat-box-wrap shadow-reset animated zoomInLeft">
                <div class="chat-main-list">
                    <div class="chat-heading">
                        <h2>Messanger</h2>
                    </div>
                    <div class="chat-content chat-scrollbar">
                        <div class="author-chat">
                            <h3>Monica <span class="chat-date">10:15 am</span></h3>
                            <p>Hi, what you are doing and where are you gay?</p>
                        </div>
                        <div class="client-chat">
                            <h3>Mamun <span class="chat-date">10:10 am</span></h3>
                            <p>Now working in graphic design with coding and you?</p>
                        </div>
                        <div class="author-chat">
                            <h3>Monica <span class="chat-date">10:05 am</span></h3>
                            <p>Practice in programming</p>
                        </div>
                        <div class="client-chat">
                            <h3>Mamun <span class="chat-date">10:02 am</span></h3>
                            <p>That's good man! carry on...</p>
                        </div>
                    </div>
                    <div class="chat-send">
                        <input type="text" placeholder="Type..." />
                        <span><button type="submit">Send</button></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Chat Box End-->
    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="js/counterup/jquery.counterup.min.js"></script>
    <script src="js/counterup/waypoints.min.js"></script>
    <!-- peity JS
		============================================ -->
    <script src="js/peity/jquery.peity.min.js"></script>
    <script src="js/peity/peity-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/sparkline-active.js"></script>
    <!-- map JS
		============================================ -->
    <script src="js/map/raphael.min.js"></script>
    <script src="js/map/jquery.mapael.js"></script>
    <script src="js/map/france_departments.js"></script>
    <script src="js/map/world_countries.js"></script>
    <script src="js/map/usa_states.js"></script>
    <script src="js/map/map-active.js"></script>
    <!-- data table JS
		============================================ -->
    <script src="js/data-table/bootstrap-table.js"></script>
    <script src="js/data-table/tableExport.js"></script>
    <script src="js/data-table/data-table-active.js"></script>
    <script src="js/data-table/bootstrap-table-editable.js"></script>
    <script src="js/data-table/bootstrap-editable.js"></script>
    <script src="js/data-table/bootstrap-table-resizable.js"></script>
    <script src="js/data-table/colResizable-1.5.source.js"></script>
    <script src="js/data-table/bootstrap-table-export.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
</body>

</html>

