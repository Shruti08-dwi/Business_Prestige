<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">

<head>
	<title></title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Edulearn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>

		
	
	   <script type="text/javascript">
function validation()
{
var a = document.form.name.value;
if(a=="")
{
alert("Please Enter Your Name");
document.form.name.focus();
return false;
}
if(!isNaN(a))
{
alert("Please Enter Only Characters");
document.form.name.select();
return false;
}
if ((a.length < 5) || (a.length > 15))
{
alert("Your Character must be 5 to 15 Character");
document.form.name.select();
return false;
}
var a = document.form.pass.value;
if(a=="")
{
alert("Please Enter Your Password");
document.form.pass.focus();
return false;
}
if ((a.length < 4) || (a.length > 8))
{
alert("Your Password must be 4 to 8 Character");
document.form.pass.select();
return false;
}
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
<style type="text/css" media="Screen">
.container, select {
     margin-left: px;
    margin-top:1px;
    font: 12px Verdana, sans-serif;
}
.frgt
{
margin-left: 20px;


}
    </style>
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
								<i class="#"></i>
								<div class="agile-addresmk">
									<p>
										<span class="font-weight-bold text-dark">Mail Us</span>
										<a href="dwivedishruti44@gmail.com">dwivedishruti44@gmail.com</a>
									</p>
								</div>
							</div>
							<div class="col-sm-4 col-6 nav-middle mt-sm-0 mt-2">
								<i class="#"></i>
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
							<a class="nav-link text-white" href="https://businessprestigeindore.blogspot.com/">Blog</a>
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

	<!-- login -->
	<div class="login-w3ls py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-bold text-warning text-center mb-5">HR
				<span class="font-weight-bold">Login</span>
			</h3>
			<!-- content -->
			<div class="sub-main-w3 pt-md-4">
				<form action="hrform" method="post" name="form" onsubmit="return validation()">
					<div class="form-style-agile form-group">
						<label>
							Username
							<i class="fas fa-user"></i>
						</label>
						<input placeholder="Username" class="form-control" name="name" type="text" required="">
					</div>
					<div class="form-style-agile form-group">
						<label>
							Password
							<i class="fas fa-unlock-alt"></i>
						</label>
						<input placeholder="Password" class="form-control" name="pass" type="password" required="">
					</div>
					<!-- switch -->
					<input type="submit" value="Log In"><br>
					<!-- //switch -->
					<div class="frgt"> 
					<div class="login-w3ls py-5">
                  
         <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Forget_Password
  </button>
          </div>
					</form>
				
			</div>
			<!-- //content -->
		</div>
	</div>
	
	
	
					
          
          <!-- The Modal -->
          
  <div class="modal fade" id="myModal">
    <div class="modal-dialog model-dialog-centered">
      <div class="modal-content">

             <div class="modal-header">
          <h4 class="modal-title">Forget Password</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
                <div class="modal-body">
          <form action="Forget_passHR" method="post">
                 <div class="form-group">
              <label><i class="fas fa-envelope-open">&nbspEnter Email:</i></label>
                     <input type="email" name="email" class="form-control" required>
              
              
                
                     </div>
               <div class="form-group">
              <label><i class="fas fa-unlock-alt">&nbspEnter Password:</i></label>
                     <input type="password" name="pass" class="form-control" required>
              
              
                
                     </div>
               <div class="form-group">
              <label><i class="fas fa-unlock-alt">&nbspEnter Re-Password:</i></label>
                     <input type="password" name="repass" class="form-control" required>
              
              
                
                     </div>
                    
                 <div class="model-footer justify-content-center">
                <button class="btn btn-danger" data-dismiss="model">submit</button>
                </div> 
              </form>
              
              </div>
            
            </div>
          
          </div>
          </div>
          

         
        <script src="js/jquery.js"></script>
    
 <script src="js/bootstrap.min.js"></script>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
					
					
						
					
				</form>
			</div>
			<!-- //content -->
		</div>
	</div>
	<!-- //login -->

	
	
	<!-- footer -->
	<footer>
		<div class="container py-4">
			<div class="row py-xl-5 py-sm-3">
				<div class="col-lg-6 map" id="map">
					<h2 class="contact-title text-capitalize text-white font-weight-light mb-sm-4 mb-3">our
						<span class="font-weight-bold">directions</span>
					</h2>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.495758873587!2d-74.0005340845242!3d40.72911557933012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25991b7473067%3A0x59fbd02f7b519ce8!2s550+LaGuardia+Pl%2C+New+York%2C+NY+10012%2C+USA!5e0!3m2!1sen!2sin!4v1516166447283"></iframe>
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
						<i class="fas fa-map-marker pr-3"></i>452001 MIG colony Palasia,Indore</p>
					<p class="para-agileits-w3layouts text-white my-sm-3 my-2">
						<i class="fas fa-phone pr-3"></i><a>+91-9584144499</a></p>
					<p class="para-agileits-w3layouts">
						<i class="far fa-envelope-open pr-2"></i>
						<a href="mailto:mail@example.com" class=" text-white">dwivedishruti44@gmail.com</a>
					</p>
				</div>
			</div>
		</div>
		
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