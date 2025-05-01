<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--@author Aayusha Kandel-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>My Appointments</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/viewappointment.css">
  <!--<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">-->
</head>
<body>

   <!--Navbar-->
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

  <!--Main-->
  <div class="container">
    <h2>My Appointments</h2>

    <div class="tabs">
      <div class="tab active">Upcoming</div>
      <div class="tab">Past</div>
    </div>

    <div class="appointment-card">
      <div class="appointment-header">
        <div>
          <div class="date">12</div>
          <div class="day">WED</div>
        </div>
        <div class="appointment-details">
          <div><strong>Timing:</strong> 5:00 PM</div>
          <div><strong>With:</strong> Dr.Smith</div>
          <div><strong>Appointment Type:</strong> Dermatology </div>
        </div>
        <button class="options-button" onclick="toggleMenu(this)">Options</button>
        <div class="options-menu">
          <button>Edit Appointment</button>
          <button>Cancel Appointment</button>
          <button>Add to Calendar</button>
        </div>
      </div>
    </div>

    <div class="appointment-card">
      <div class="appointment-header">
        <div>
          <div class="date">19</div>
          <div class="day">WED</div>
        </div>
        <div class="appointment-details">
          <div><strong>Timing:</strong> 4:00 PM</div>
          <div><strong>With:</strong> Dr.Lee</div>
          <div><strong>Appointment Type:</strong> Pediatric</div>
        </div>
        <button class="options-button" onclick="toggleMenu(this)">Options</button>
        <div class="options-menu">
          <button>Edit Appointment</button>
          <button>Cancel Appointment</button>
          <button>Add to Calendar</button>
        </div>
      </div>
    </div>

    <button class="book-btn">Book new Appointment</button>
  </div>
<!-- Footer section -->
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
</html>
