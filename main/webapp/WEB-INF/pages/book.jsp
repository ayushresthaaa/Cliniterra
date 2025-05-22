<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--@author Aayusha Kandel-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Clinic Appointment</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/book.css">
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
    <div class="left-panel">
      <h2>Welcome to</h2>
      <h1>Cliniterra</h1>
      <img src="${pageContext.request.contextPath}/resources/images/adamdivaz.jpg" alt="Doctor">
    </div>
    <div class="right-panel">
      <h2>Book a Clinic Appointment</h2>
      <p>Select your service, date and leave us a note if needed.</p>

      <!--<div class="services">
        <div class="service active">General Checkup</div>
        <div class="service">Dental</div>
        <div class="service">Dermatology</div>
        <div class="service">Pediatrics</div>
      </div>-->

      <form>
        <!--<label> Full Name<span>*</span> </label>
        <input type="text" placeholder="Your Name" required>
        <label>Email<span>*</span> </label>
        <input type="email" placeholder="Email Address" required>
        <label>Contact Number<span>*</span> </label>
        <input type="tel" placeholder="Phone Number" required>-->
        
        <label for="date">Select Date<span>*</span></label>
        <input type="date" id="date" required disabled>

        <!--<label for="timeSlot">Available Time Slots</label>
        <select id="timeSlot" required>
          <option value="">-- Select a Time Slot --</option>
        </select>-->

        <div id="timeSlotsContainer">
          <p>Select Time Slot:</p>
          <div id="timeSlots"></div>
        </div>

        <div class="form-group">

          <form id="appointmentForm">
            <label for="doctor">Select Doctor:</label>
            <select id="doctor" required>
              <option value="">-- Choose a Doctor --</option>
              <option value="dr_smith">Dr. Smith</option>
              <option value="dr_lee">Dr. Lee</option>
              <option value="dr_lee">Dr. Lee</option>
              <option value="dr_lee">Dr. Lee</option>
              <option value="dr_lee">Dr. Lee</option>
              <option value="dr_lee">Dr. Lee</option>
            </select> 
          
           
            <!--<label>Doctors<span>*</span> </label>
            <select required>
              <option selected disabled>Select Doctor</option>
              <option>Dr. Sarah Williams</option>
              <option>Dr. Smith</option>
              <option>Dr. John Smith</option>
              <option>Dr. John Smith</option>
              <option>Dr. John Smith</option>
              <option>Dr. John Smith</option>
            </select>-->
          
        </div>

        <textarea placeholder="Additional message (optional)"></textarea>
        <button type="submit">Book Appointment</button>
      </form>
      </form>
    </div>

    <script src="book.js"></script>
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
          <li>Orthopedic</li>
          <li>Dermatology</li>
          <li>Pediatric</li>
          <li>Cardiology</li>
          <li>Dentistry</li>
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