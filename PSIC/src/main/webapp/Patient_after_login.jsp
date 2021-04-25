		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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

div.transbox {
  margin: 10px;
  background-color: white;
  border: 1px solid black;
  /*opacity: 0.6;*/
  position: absolute;
  left: 20px;
  top: 40px;
  z-index: 2;
  width:20%;
  height:50%;
  overflow: auto;
}
div.searchbox {
  margin: auto;
  background-color: white;
  border: 1px solid black;
  /*opacity: 0.6;*/
  position: absolute;
  left: 0;
  top: -430px;
  right:0;
  bottom:0;
  z-index: 2;
  width:50%;
  height:50%;
}
div.searchbox2 {
  margin: auto;
  background-color: white;
  border: 1px solid black;
  /*opacity: 0.6;*/
  text-align:center;
  position: absolute;
  left: 1000px;
  top: -430px;
  right:0;
  bottom:0;
  z-index: 2;
  width:15%;
  height:10%;
}
/* Style the search box */
#mySearch {
  width: 100%;
  font-size: 18px;
  padding: 11px;
  border: 1px solid #ddd;
}

/* Style the navigation menu inside the left column */
#myMenu {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myMenu li a {
  padding: 12px;
  text-decoration: none;
  color: white;
  display: block
}

#myMenu li a:hover {
  background-color: black;
  color:white;
}
.left{
background-color: black;
  border: 1px solid black;
  opacity: 0.3;
}
    </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-md fixed-top mb-2">
            <p>&emsp;</p><h5>Physio Theraphy</h5>&emsp;
            <img src="logo.jpg" width="100px" height="85px">
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Patient ID :${obj.getId()}</a></li>
                </ul>
            </div>
        </nav>
        <main>
            <div class="headernav"> 
            	<a href="/patientlogout" class="right"><input type="button" value="Logout" ></a> 
                <a href="#" class="right"><input type="button" value="Booking" data-toggle="modal" data-target="#notify"></a>  
                <a href="#" class="right"><input type="button" value="EditProfile" data-toggle="modal" data-target="#edit"></a>
                <a href="#" class="right"><input type="button" value="showBooking" data-toggle="modal" data-target="#show"></a>
                <a href="#" class="right"><input type="button" value="Timeslots" data-toggle="modal" data-target="#time"></a>
                
            </div>
                <div class="slideshow-container">
                        <img src="six.jpg" style="width:100%">
                   	 	  <div class="transbox" >
						  <div class="left">
						    <input type="text" id="mySearch" onkeyup="myFunction()" placeholder="Search.." title="Type in a category">
						    <ul id="myMenu">
						     <li><a href="#">Range of Motion</a></li>
						      <li><a href="#">Electro Theraphy</a></li>
						      <li><a href="#">CryoTheraphy</a></li>
						      <li><a href="#">Heat Theraphy</a></li>
						      <li><a href="#">Soft Tissue Mobilization</a></li>
						      <li><a href="#">Kinesio taping</a></li>
						      <li><a href="#">Therapeuic Ultrasonic</a></li>
						      <li><a href="#">Body Relaxation</a></li>
						      <li><a href="#">Backbone Straightning</a></li> 
						      
						    </ul>
						  </div>
						  </div>
						  <div class="searchbox" >
						  <table>
						  	<tr><td>Patient ID</td><td>:</td><td>${pat.getId()}</td></tr>
						  	<tr><td>Patient NAME</td><td>:</td><td>${pat.getName()}</td></tr>
						  	<tr><td>Patient EMAIL</td><td>:</td><td>${pat.getEmail()}</td></tr>
						  	<tr><td>Patient PHNO</td><td>:</td><td>${pat.getMobile()}</td></tr>
						  	<tr><td>Patient PLACE</td><td>:</td><td>${pat.getPlace()}</td></tr>
						  	<tr><td>Patient ADDRESS</td><td>:</td><td>${pat.getAddress()}</td></tr>
						  	<tr><td>PHYSICIAN ID</td><td>:</td><td>${physician2.getId()}</td></tr>
						  	<tr><td>PHYSICIAN NAME</td><td>:</td><td>${physician2.getName()}</td></tr>
						  	<tr><td>PHYSICIAN PLACE</td><td>:</td><td>${physician2.getPlace()}</td></tr>
						  	<tr><td>PHYSICIAN EMAIL</td><td>:</td><td>${physician2.getEmail()}</td></tr>
						  	<tr><td>PHYSICIAN MOBILE</td><td>:</td><td>${physician2.getMobile()}</td></tr>
						  	<tr><td>PHYSICIAN ADDRESS</td><td>:</td><td>${physician2.getAddress()}</td></tr>
						  	<tr><td>DATE</td><td>:</td><td>${date}</td></tr>
						  	<tr><td>SLOT</td><td>:</td><td>${slot}</td></tr>
							<tr><td>Problem</td><td>:</td><td>${problem}</td></tr>
							<p style="color:red;">${booked}</p>				  	
						  </table>
						    
						  </div>
						  
						  <div class="searchbox2" >
						  
						  <button onclick="window.print()">Download Receipt</button>
						  </div>
                            <div class="container">
                                <div class="modal fade" id="notify" role="dialog"> <!-- notify-->
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-body">           
						      					<form action="/save" class="form-container">
						      					<table>
						      					<tr><td>Patient Id</td><td>:</td><td><input type="text" name="id" value="${obj.getId()}"></td></tr>
						      					<tr><td>Patient Name</td><td>:</td><td><input type="text" name="pname" value="${obj.getName()}"></td></tr>
						      					<tr><td>Patient Email</td><td>:</td><td><input type="text" name="pemail" value="${obj.getEmail()}"></td></tr>
						      					<tr><td>Date</td><td>:</td><td><input type="date" name="date"></td></tr>
						      						<tr>
						      							<td>Physician</td><td>:</td><td>
						      							<select name="physician" style="width:200px;padding:5px;">
														  <c:forEach items="${physicians}" var="list" varStatus="loop">
														    <option value="${list.getEmail()}">
														        ${list.getName()}
														    </option>
														  </c:forEach>
														</select></td>
						      						</tr>
						      						<tr><td>Slots</td><td>:</td><td><input type="radio" id="slot" name="slot" value="1">&emsp;Slot 1 (9 AM to 10 AM)<br>
								      						<input type="radio" id="slot" name="slot" value="2">&emsp;Slot 2 (11 AM to 12 PM)<br>
								      						<input type="radio" id="slot" name="slot" value="3">&emsp;Slot 3 (1 PM to 2 PM)<br>
								      						<input type="radio" id="slot" name="slot" value="4">&emsp;Slot 4 (3 PM to 4 PM)<br></td></tr>
								      				<tr><td>Patient Problem</td><td>:</td><td><textarea rows="4" cols="50" name="problem"></textarea></td></tr>
								      				<tr><td></td><td></td><td><input type="submit" value="Book"></td></tr>
						      					</table>
						      					</form>
								
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>  
                            
                            
                            <div class="container">
                                <div class="modal fade" id="edit" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                        <div class="modal-body">
                                        <form action="/editPatientProfile" class="form-container">
                                            	<table>
				                              		<tr><td>Id</td><td style="width:40px;"><input type="text"  name="id" value="${obj.getId()}" required></td></tr>
				                              		<tr><td>Name</td><td><input type="text"  name="name" value="${obj.getName()}" required></td></tr>
				                              		<tr><td>Place</td><td><input type="text"  name="place" value="${obj.getPlace()}" required></td></tr>
				                              		<tr><td>Mobile</td><td><input type="text" name="phone" value="${obj.getMobile()}" required></td></tr>
				                              		<tr><td>Email</td><td><input type="text"  name="email" value="${obj.getEmail()}" required></td></tr>
				                              		<tr><td>Address</td><td><textarea rows="4" cols="50" name="address">${obj.getAddress()}</textarea></td></tr>
				                              		<tr><td><button type="submit" class="btn">Save</button></td></tr>
				                             	 </table>  
				                          </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>  
<!-- #physicians-slots -->            <div class="container">
                                <div class="modal fade" id="time" role="dialog"> <!-- notify-->
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
                            
                            <div class="container">
                                <div class="modal fade" id="show" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                        <div class="modal-body">
                                            <table style="margin-top:10px;border-collapse: collapse;width:100%;">
												
												<tr style="color:red;"><td>PatientId</td><td>PatientName</td><td>Physician</td><td>Date</td><td>Slot</td></tr>
												<c:forEach items="${allBooked}" var="entry">
													<tr><td>${entry.getPid()}</td><td>${entry.getPname()}</td><td>${entry.getPhysicianName()}</td><td>${entry.getDate()}</td><td>${entry.getSlot()}</td>
													<td><a href="/deletebooked?pid=${entry.getPid()}&pemail=${entry.getPemail()}"><input type="button" value="Cancel"></a></td></tr>
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

<script>
function myFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("mySearch");
  filter = input.value.toUpperCase();
  ul = document.getElementById("myMenu");
  li = ul.getElementsByTagName("li");
  for (i = 0; i < li.length; i++) {
    a = li[i].getElementsByTagName("a")[0];
    if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
      li[i].style.display = "";
    } else {
      li[i].style.display = "none";
    }
  }
}

</script>