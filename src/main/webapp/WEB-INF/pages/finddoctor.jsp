<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--@author Aashika Kambang-->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Find a Doctor - Clinic Appointment System</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/finddoctor.css">
</head>
<body>

  
     <div class="navbar"> 
    <img class="logo" src="${pageContext.request.contextPath}/resources/images/clinilogobgrem.png" alt="Logo">
    <div class="nav-links">
      <a href="${pageContext.request.contextPath}/home">Home</a>
      <a href="${pageContext.request.contextPath}/finddoctor">Find doctor</a>
      <a href="${pageContext.request.contextPath}/view">View appointment</a>
      <a href="${pageContext.request.contextPath}/aboutus">About us</a>
      <a href="${pageContext.request.contextPath}/contact">Contact</a>
  
      <!--<a href="#" class="button">Book now</a>-->
     </div>
		<a href="${pageContext.request.contextPath}/book" class="button">Book now</a>
  </div>
    
  

  <div class="container">
    <img src="images/image.png" class="full-screen-width banner-img" >
   
 
    <h1> MAKE A DOCTOR'S APPOINTMENT</h1>
    <div class="features">
  <div class="feature">
    <div class="doctor-profile">
      <img src="${pageContext.request.contextPath}/resources/images/adamdivaz.jpg" alt="Emergency Help Doctor">
      <div class="doctor-info">
        <h4>Adam Diaz</h4>
        <p>Marine Medicine</p>
      </div>
    </div>
    <h3>OPD WARD</h3>
    <div class="button-container">
    <a href="${pageContext.request.contextPath}/book" class="appointment-btn">Book An Appointment</a>
    <a href="${pageContext.request.contextPath}/viewdoctor" class="View-btn">View Profile</a>
    </div>
  </div>
  
  <div class="feature">
    <div class="doctor-profile">
      <img src="${pageContext.request.contextPath}/resources/images/kimsam.jpg" alt="Qualified Doctor">
      <div class="doctor-info">
        <h4>Kim Sam</h4>
        <p>Cardiology</p>
      </div>
    </div>
    <h3>EMERGENCY WARD</h3>
    <div class="button-container">
    <a href="${pageContext.request.contextPath}/book">Book An Appointment</a>
    <a href="${pageContext.request.contextPath}/viewdoctor" class="View-btn">View Profile</a>
    
    </div>
    
  </div>
    <div class="feature">
    <div class="doctor-profile">
      <img src="${pageContext.request.contextPath}/resources/images/adamsmith.jpg" alt="Qualified Doctor">
      <div class="doctor-info">
        <h4>Adam Smith </h4>
        <p>Neurologist</p>
      </div>
    </div>
    <h3>GENERAL WARD</h3>
    <div class="button-container">
    <a href="${pageContext.request.contextPath}/book" class="appointment-btn">Book An Appointment</a>
    <a href="${pageContext.request.contextPath}/viewdoctor" class="View-btn">View Profile</a>
    </div>
  </div>

    <div class="feature">
    <div class="doctor-profile">
      <img src="${pageContext.request.contextPath}/resources/images/samara.jpg" alt="Qualified Doctor">
      <div class="doctor-info">
        <h4>Samara Ford</h4>
        <p>Gynologist</p>
      </div>
    </div>
    <h3>OPD WARD</h3>
    <div class="button-container">
    <a href="${pageContext.request.contextPath}/book">Book An Appointment</a>
    <a href="${pageContext.request.contextPath}/viewdoctor">View Profile</a>
    </div>
  </div>

      <div class="feature">
    <div class="doctor-profile">
      <img src="${pageContext.request.contextPath}/resources/images/sanduik.jpg" alt="Qualified Doctor">
      <div class="doctor-info">
        <h4>Sanduk Ruit</h4>
        <p>Opthalmologist</p>
      </div>
    </div>
    <h3>GENERAL WARD</h3>
    <div class="button-container">
    <a href="${pageContext.request.contextPath}/book" class="appointment-btn">Book An Appointment</a>
    <a href="${pageContext.request.contextPath}/viewdoctor" class="View-btn">View Profile</a>
    </div>
  </div>


 
  <!-- Repeat for other features -->
</div>
  </div>
	<footer class="footer">
  <div class="footer-container">
    <!-- Contact Info -->
    <div class="footer-section">
      <h3>Contact Info</h3>
      <p>📞 01-5423467, +977-9845786430, +977-9267453897</p>
      <p>📨 cliniterra01@gmail.com</p>
      <p>📍Kamalpokhari, Kathmandu, Nepal</p>
    </div>

    <!-- Departments -->
    <div class="footer-section">
      <h3>Services</h3>
      <div class="departments">
        <ul>
          <li>OPD Ward</li>
          <li>Neurologist</li>
          <li>Gynologist</li>
          <li>Cardiology</li>
          <li>Opthalmologist</li>
        </ul>
      </div>
    </div>

    <!-- Support -->
      <div class="footer-section">
        <h3>Support</h3>
        <div class="foo-column">
          <ul>
            <li><a href="#">Book Appointment</a></li>
            <li><a href="#">Our doctors</a></li>
            <li><a href="#">Contact Us</a></li>
          </ul>
        </div>
      </div>
  </div>
  <div class="footer-bottom">
    &copy; 2025 Cliniterra. All rights reserved.
  </div>
</footer>
	
</body>
</body>
</html>