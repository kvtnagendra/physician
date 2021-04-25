<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
    
<!DOCTYPE html>
<html>
    <head>
     <meta charset="UTF-8">
     <title>Physio Theraphy</title>
            <link rel="shortcut icon" href="favicon.ico " type="image/x-icon" />
            <script src='https://kit.fontawesome.com/a076d05399.js'></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            <link rel="stylesheet" href="css/style.css" type="text/css">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        /*  basic css for header body and footer*/
            body {
                    font-family: 'Source Sans Pro', sans-serif;
                    font-family: 'Raleway', sans-serif;
                    /* background-image : url("car_servicing_5.jpg"); */
                background-repeat:repeat;
                }
            nav, nav a {
                color: #000000;
                /* background-color: #ffcc00; */
                background-color: white;
            }
            h1{
                color:black;
            }
            a:HOVER {
                color: #fff;
            }
            main{
                background-color: #333;
                padding-top:110px;
                /* padding-bottom:460px; */
            }
            footer{
                /* background-color:#ffcc00; */
                background-color:white;

                height:200px;
                padding-top:30px;
            }
            /* .giffy{
             padding-top:50px; 
            } */
/* navigation search and other /logo Title */
.header {
  padding: 75px;
  text-align: center;
  background: #1abc9c;
  color: white;
}

/* Increase the font size of the heading */
.headernav h1 {
  font-size: 35px;
}

/* Style the top navigation bar */
.headernav {
  /* height: 25px; */
  overflow: hidden;
  background-color: #333;
}

/* Style the navigation bar links */
.headernav a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}

/* Right-aligned link */
.headernav a.right ,div.right{
  float: right;
}

/* Change color on hover */
.headernav a:hover {
  background-color: #ddd;
  color: black;
}
input[type=text] {
  width: 130px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}
input[type=text]:focus {
  width: 25%;
}
                    /* slide show css */
                    * {box-sizing: border-box;}
                    body {font-family: Verdana, sans-serif;}
                    .mySlides {display: none;}
                    img {vertical-align: middle;}
                    /* Slideshow container */
                    .slideshow-container {
                    width:100%;
                    position: relative;
                    margin: auto;
                    }
                    /* Caption text */
                    .text {
                    color: #f2f2f2;
                    font-size: 15px;
                    padding: 8px 12px;
                    position: absolute;
                    bottom: 8px;
                    width: 100%;
                    text-align: center;
                    }
                    /* Number text (1/3 etc) */
                    /* The dots/bullets/indicators */
                    .dot {
                    height: 15px;
                    width: 15px;
                    margin: 0 2px;
                    background-color: #bbb;
                    border-radius: 50%;
                    display: inline-block;
                    transition: background-color 0.6s ease;
                    }
                    .active {
                    background-color: #717171;
                    }
                    /* Fading animation */
                    .fade {
                    -webkit-animation-name: fade;
                    -webkit-animation-duration: 0s;
                    animation-name: fade;
                    animation-duration: 2s;
                    }
                    @-webkit-keyframes fade {
                    from {opacity: .9} 
                    to {opacity: 1}
                    }
                    @keyframes fade {
                    from {opacity: .7} 
                    to {opacity: 1}
                    }
                    /* On smaller screens, decrease text size */
                    @media only screen and (max-width: 300px) {
                    .text {font-size: 11px}
                    }
                    .open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  top: 23px;
  right: 28px;
  width: 280px;
}
/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  border: 3px solid #f1f1f1;
  z-index: 9;
}
/* Add styles to the form container */
.form-container {
  max-width: 500px;
  padding: 10px;
  background-color: white;
}
/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 5px 0;
  border: none;
  background: #f1f1f1;
}
/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:5px;
  opacity: 0.8;
}
/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}
/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
    </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-md fixed-top mb-2">
            <p>&emsp;</p><h5>Physio Theraphy</h5>&emsp;
            <img src="logo.jpg" width="100px" height="85px">
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto">
                    <!-- <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Service Types</a></li> -->
                </ul>
            </div>
        </nav>
        <main>
            <div class="headernav"> 
              <!-- &emsp;<button><i class="fa fa-bars" aria-hidden="true"></i></button>
                &emsp;<input type="text" name="search" placeholder="Search.."> -->
                <!-- <a href="#" class="right"><input type="button" value=">>" onclick="window.history.forward()"></a>
                <a href="#" class="right"><input type="button" value="<<" onclick="window.history.back()"></a> -->
                <a href="#" class="right"><input type="button" value="PhysicianRegistration" onclick="openFormdata(1)"></a>
                <a href="#" class="right"><input type="button" value="PhysicianLogin" onclick="openFormdata(2)"></a>
                <a href="#" class="right"><input type="button" value="AdminRegistration" onclick="openFormdata(4)"></a>
                <a href="#" class="right"><input type="button" value="AdminLogin" onclick="openFormdata(3)"></a>
                <a href="#" class="right"><input type="button" value="PatientRegistration" onclick="openFormdata(5)"></a>
                <a href="#" class="right"><input type="button" value="PatientLogin" onclick="openFormdata(6)"></a>
                <!-- <button onclick="swal('You Are in Ekart shopping online mobiles');">Click me</button> -->
                
            </div>
       
<c:set var="flag" scope="session" value="${flag}"/> 
 <c:choose> 
 <c:when test="${flag == (false)}">  
         <div class="alert alert-danger alert-dismissible fade show">
		    <button type="button" class="close" data-dismiss="alert">&times;</button>
		    <strong>${msg}</strong>
		  </div>
    </c:when>
 	<c:when test="${flag ==(true)}">  
	     <div class="alert alert-success alert-dismissible fade show">
		    <button type="button" class="close" data-dismiss="alert">&times;</button>
		    <strong>${msg}</strong>
		  </div>
    </c:when>   
    <c:otherwise>  </c:otherwise>
</c:choose>  
                <div class="slideshow-container" style="align-items: center;">
                    <!-- <div class="mySlides fade"><img src="one.jpg" ></div> -->
                    <div class="mySlides fade"><img src="five.jpg" style="width: 100%;"></div>
                    <div class="mySlides fade"><img src="three.jpg" style="width: 100%;"></div>
                    <div class="mySlides fade"><img src="four.jpg" style="width: 100%;"></div>
                </div> 
                               <!--  Admin Login Form -->
                        <div class="form-popup" id="Adminlogin" style="top: 100px;right: 450px;">
                          <form action="adminlogin" class="form-container">
                                <center><h6><b>Admin-Login</b></h6></center>
                                <label for="email"><b>Email</b></label>
                                <input type="text" placeholder="Enter Email" name="email" required>
                                <label for="pswd"><b>Password</b></label>
                                <input type="password" placeholder="Enter Password" name="pswd" required>
                                <button type="submit" class="btn">Login</button>
                                <button type="button" class="btn cancel" onclick="closeForm(3)">Close</button>
                          </form>
                      </div>
                        <!--  Admin Registration Form -->
                     
                     <div class="form-popup" id="Adminregistration" style="top: 100px;right: 350px;">
                        <form action="/adminregister" class="form-container"  method="POST" enctype="multipart/form-data">
                              <center><h6><b>Admin-Registration</b></h6></center>
                              <label for="name"><b>Name</b></label>
                              <input type="text" placeholder="Enter Name" name="name" required>
                              <label for="place"><b>Place</b></label>
                              <input type="text" placeholder="Enter Place" name="place" required>
                              <label for="email"><b>Email</b></label>
                              <input type="text" placeholder="Enter Email" name="email" required>
                              <label for="pswd"><b>Password</b></label>
                              <input type="password" placeholder="Enter Password" name="pswd" required>
                              <button type="submit" class="btn">Register</button>
                              <button type="button" class="btn cancel" onclick="closeForm(4)">Close</button>
                                                      </form>
                    </div>
                       <!--  Physician Login Form -->
                            <div class="form-popup" id="userlogin" style="top: 100px;right: 250px;">
                              <form action="/physicianlogin" class="form-container">
                                    <center><h6><b>Physician-Login</b></h6></center>
                                   <label for="email"><b>Email</b></label>
                                <input type="text" placeholder="Enter Email" name="email" required>
                                <label for="pswd"><b>Password</b></label>
                                <input type="password" placeholder="Enter Password" name="pswd" required>
                                <button type="submit" class="btn">Login</button>
                                    <button type="button" class="btn cancel" onclick="closeForm(1)">Close</button>
                              </form>
                          </div>
                            <!--  Physician Registration Form -->
                          <div class="form-popup" id="userregistration" style="top: 100px;right: 150px;">
                            <form action="physicianregister" class="form-container">
                              <center><h6><b>Physician-Registration</b></h6></center>
                              <label for="name"><b>Name</b></label>
                              <input type="text" placeholder="Enter Name" name="name" required>
                              <label for="place"><b>Place</b></label>
                              <input type="text" placeholder="Enter Place" name="place" required>
                              <label for="email"><b>Email</b></label>
                              <input type="text" placeholder="Enter Email" name="email" required>
                              <label for="pswd"><b>Password</b></label>
                              <input type="password" placeholder="Enter Password" name="pswd" required>
                              <button type="submit" class="btn">Register</button>
                                  <button type="button" class="btn cancel" onclick="closeForm(2)">Close</button>
                            </form>
                        </div>
                        <!--  Patient Login Form -->
                            <div class="form-popup" id="PatientLogin" style="top: 100px;right: 450px;">
                              <form action="/patientlogin" class="form-container">
                                    <center><h6><b>Patient-Login</b></h6></center>
                                   <label for="email"><b>Email</b></label>
                                <input type="text" placeholder="Enter Email" name="email" required>
                                <label for="pswd"><b>Password</b></label>
                                <input type="password" placeholder="Enter Password" name="pswd" required>
                                <button type="submit" class="btn">Login</button>
                                    <button type="button" class="btn cancel" onclick="closeForm(5)">Close</button>
                              </form>
                          </div>
                            <!--  Patient Registration Form -->
                          <div class="form-popup" id="Patientregistration" style="top: 100px;right: 350px;">
                            <form action="/patientregister" class="form-container">
                              <center><h6><b>Patient-Registration</b></h6></center>
                              <label for="name"><b>Name</b></label>
                              <input type="text" placeholder="Enter Name" name="name" required>
                              <label for="place"><b>Place</b></label>
                              <input type="text" placeholder="Enter Place" name="place" required>
                              <label for="email"><b>Email</b></label>
                              <input type="text" placeholder="Enter Email" name="email" required>
                              <label for="pswd"><b>Password</b></label>
                              <input type="password" placeholder="Enter Password" name="pswd" required>
                              <button type="submit" class="btn">Register</button>
                                  <button type="button" class="btn cancel" onclick="closeForm(6)">Close</button>
                            </form>
                        </div>
                       
                <div style="text-align:center">
                    <span class="dot"></span> 
                    <span class="dot"></span> 
                    <span class="dot"></span>           
                </div>   
            <!-- <img class="giffy" src="#" width=100%> -->
        </main>
        <footer>
              <div style="text-align: center;">
                    <p id="footer"><strong>Copyright &copy 2020</strong></p>
                    <span><a href="#" class="fa fa-facebook" style="font-size: 30px;padding: 20px;margin: 5px 2px;color: #333;text-decoration: none;"></a></span>
                    <span><a href="#" class="fa fa-twitter" style="font-size: 30px;padding: 20px;margin: 5px 2px;color: #333;text-decoration: none;"></a></span>
                    <span><a href="#" class="fa fa-google" style="font-size: 30px;padding: 20px;margin: 5px 2px;color: #333;text-decoration: none;"></a></span>
                    <span><a href="#" class="fa fa-linkedin" style="font-size: 30px;padding: 20px;margin: 5px 2px;color: #333;text-decoration: none;"></a></span>
                    <span><a href="#" class="fa fa-youtube" style="font-size: 30px;padding: 20px;margin: 5px 2px;color: #333;text-decoration: none;"></a></span>
                    <span><a href="#" class="fa fa-instagram" style="font-size: 30px;padding: 20px;margin: 5px 2px;color: #333;text-decoration: none;"></a></span>
                    <span><a href="#" class="fa fa-snapchat-ghost" style="font-size: 30px;padding: 20px;margin: 5px 2px;color: #333;text-decoration: none;"></a></span>
              </div>
        </footer>
    </body>
</html>
<!-- Slide Show-->
<script>
        var slideIndex = 0;
        showSlides();
        function showSlides() {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
          }
          slideIndex++;
          if (slideIndex > slides.length) {slideIndex = 1}    
          for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
          setTimeout(showSlides, 2000); // Change image every 2 seconds
        }
</script>
<!--  for popup-->
<script>
      function openFormdata(x){
        if(x==1){
          openForm("userregistration");
        }else if(x==2){
          openForm("userlogin");
        }else if(x==3){
          openForm("Adminlogin");
        }else if(x==4){
          openForm("Adminregistration");
        }else if(x==5){
          openForm("Patientregistration");
        }else if(x==6){
          openForm("PatientLogin");
        }
      }
      function openForm(k) {
        document.getElementById(k).style.display = "block";
      }
      function closeForm(y) {
        if(y==1){
          document.getElementById("userlogin").style.display = "none";
        }else if(y==2){
          document.getElementById("userregistration").style.display = "none";
        }else if(y==3){
          document.getElementById("Adminlogin").style.display = "none";
        }else if(y==4){
          document.getElementById("Adminregistration").style.display = "none";
        }else if(y==5){
          document.getElementById("PatientLogin").style.display = "none";
        }else if(y==6){
          document.getElementById("Patientregistration").style.display = "none";
        }
      }
  </script>