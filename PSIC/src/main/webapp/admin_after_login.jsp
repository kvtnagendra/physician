<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
 <%@ page import="com.Project.PSIC.Model.*"%>
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
                    /* background-image : url("one.jpg"); */
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

/*icons*/
.content p{
  font-size: 16px;
}
.content .icons a{
  height: 50px;
  width: 50px;
  font-size: 20px;
  text-decoration: none;
  border: 1px solid transparent;
}
.icons a i{
  transition: transform 0.3s ease-in-out;
}
.icons a:nth-child(1){
  color: #1877F2;
  border-color: #b7d4fb;
}
table, td, th {
  border: 1px solid black;
}
    </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-md fixed-top mb-2">
            <p>&emsp;</p><h5>Physio Theraphy</h5>&emsp;
            <img src="logo.jpg" width="100px" height="85px">
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Admin ID : ${obj.getId()}</a></li>
                </ul>
            </div>
        </nav>
        <main>
            <div class="headernav"> 
            	<a href="/adminlogout" class="right"><input type="button" value="Logout" ></a> 
                <a href="#" class="right"><input type="button" value="physicians" data-toggle="modal" data-target="#physicians"></a>
                <a href="#" class="right"><input type="button" value="patients" data-toggle="modal" data-target="#patients"></a>
                <a href="#" class="right"><input type="button" value="bookeddata" data-toggle="modal" data-target="#bookeddata"></a>
                <a href="#" class="right"><input type="button" value="cancelleddata" data-toggle="modal" data-target="#cancelleddata"></a>
                <a href="#" class="right"><input type="button" value="physicians-slots" data-toggle="modal" data-target="#physicians-slots"></a>
            </div>
                <div class="slideshow-container">
                    <img src="one.jpg" style="width:100%">
 <!-- physicians -->            <div class="container">
                                <div class="modal fade" id="physicians" role="dialog"> <!-- notify-->
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                             <table style="margin-top:10px;border-collapse: collapse;width:100%;">
                                           <caption>Physicians</caption>
												<tr style="color:red;"><td>ID</td><td>NAME</td><td>PLACE</td><td>EMAIL</td><td>MOBILE</td><td>ADDRESS</td></tr>
												 <c:forEach items="${physicians}" var="entry">
													<tr><td>${entry.getId()}</td><td>${entry.getName()}</td><td>${entry.getPlace()}</td><td>${entry.getEmail()}</td><td>${entry.getMobile()}</td>
													<td>${entry.getAddress()}</td></tr>
												</c:forEach> 
											</table>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
<!-- end - physicians -->    

<!-- #patients -->            <div class="container">
                                <div class="modal fade" id="patients" role="dialog"> <!-- notify-->
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-body">
	                                           <table style="margin-top:10px;border-collapse: collapse;width:100%;">
                                           <caption>Patients</caption>
												<tr style="color:red;"><td>ID</td><td>NAME</td><td>PLACE</td><td>EMAIL</td><td>MOBILE</td><td>ADDRESS</td></tr>
												 <c:forEach items="${patients}" var="entry">
													<tr><td>${entry.getId()}</td><td>${entry.getName()}</td><td>${entry.getPlace()}</td><td>${entry.getEmail()}</td><td>${entry.getMobile()}</td>
													<td>${entry.getAddress()}</td></tr>
												</c:forEach> 
											</table>   	                                                
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
<!-- end - #patients -->    

<!-- #bookeddata -->            <div class="container">
                                <div class="modal fade" id="bookeddata" role="dialog"> <!-- notify-->
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                             <table style="margin-top:10px;border-collapse: collapse;width:100%;">
                                           <caption>Booked slots</caption>
												<tr style="color:red;"><td>Patient</td><td>Name</td><td>Email</td><td>Physician</td><td>Name</td><td>Date</td><td>Slot</td><td>Problem</td></tr>
												 <c:forEach items="${book}" var="entry">
													<tr><td>${entry.getPid()}</td><td>${entry.getPname()}</td><td>${entry.getPemail()}</td><td>${entry.getPhysicianid()}</td><td>${entry.getPhysicianName()}<td>${entry.getDate()}</td><td>${entry.getSlot()}</td>
													<td>${entry.getProblem()}</td></tr>
												</c:forEach> 
											</table> 
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
<!-- end - #bookeddata -->    

<!-- #cancelleddata -->            <div class="container">
                                <div class="modal fade" id="cancelleddata" role="dialog"> <!-- notify-->
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                             <table style="margin-top:10px;border-collapse: collapse;width:100%;">
                                           <caption>Cancelled slots</caption>
												<tr style="color:red;"><td>Patient</td><td>Name</td><td>Email</td><td>Physician</td><td>Name</td><td>Date</td><td>Slot</td><td>Problem</td></tr>
												 <c:forEach items="${cancelled}" var="entry">
													<tr><td>${entry.getPid()}</td><td>${entry.getPname()}</td><td>${entry.getPemail()}</td><td>${entry.getPhysicianid()}</td><td>${entry.getPhysicianName()}<td>${entry.getDate()}</td><td>${entry.getSlot()}</td>
													<td>${entry.getProblem()}</td></tr>
												</c:forEach> 
											</table> 
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
<!-- end - #cancelleddata -->    
<!-- #physicians-slots -->            <div class="container">
                                <div class="modal fade" id="physicians-slots" role="dialog"> <!-- notify-->
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                            <table style="margin-top:10px;border-collapse: collapse;width:100%;">
												<tr style="color:red;"><td>Physician</td><td>Date</td><td>Slot1</td><td>Slot2</td><td>Slot3</td><td>Slot4</td></tr>
												<c:forEach items="${table}" var="entry">
													<tr><td>${entry.getId()}</td><td>${entry.getDate()}</td><td>${entry.getSlot1()}</td><td>${entry.getSlot2()}</td><td>${entry.getSlot3()}</td><td>${entry.getSlot4()}</td>
													</tr>
												</c:forEach>
											</table>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
<!-- end - #physicians-slots -->                          
                </div>
            </div>  
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