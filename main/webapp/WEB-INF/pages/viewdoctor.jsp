<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--@author Aashika Kambang-->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dr.SAMARA FORD - Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/viewdoctor.css">
    
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
    <div class="profile-container">
      <div class="profile-header">
        <img src="${pageContext.request.contextPath}/resources/images/samara.jpg" alt="Dr. Arati Thapa" class="profile-image" />
        <div class="doctor-info">
          <h1>DR. SAMARA FORD</h1>
          <h2>Consultant Gynologist</h2>
        </div>
      </div>

      <div class="profile-content">
        <div class="sidebar">
          <h3>OPD SCHEDULE</h3>
          <div class="opd-schedule">
            <p>Sunday - Friday</p>
            <p>09:00 AM - 10:30 AM</p>
            <p>06:00 PM - 07:00 PM</p>
          </div>

          <a href="book.html" class="appointment-btn">Book An Appointment</a>
          <div class="rating">
          <div class="star-rating">
            <span class="star filled">★</span>
            <span class="star filled">★</span>
            <span class="star filled">★</span>
            <span class="star">★</span>
            <span class="star">★</span>
          </div>
          <span class="rating-text">2/5</span>
          </div>
        </div>

        <div class="main-content">
          <h3>PROFESSIONAL JOURNEY</h3>

          <h4>WORK EXPERIENCE</h4>
          <ul>
            <li>
              2023-2024 : International Fellowship, Essex Partnership University
              NHS Foundation Trust, United Kingdom
            </li>
            <li>
              2017-2022: Assistant Professor, College of Medical Sciences and
              Teaching Hospital, Chitwan
            </li>
            <li>
              2012-2013: Medical Officer, Western Regional Hospital, Pokhara.
            </li>
          </ul>

          <h4>EDUCATION</h4>
          <ul>
            <li>
              2014-2017 – Resident Doctor, Department of Psychiatry, B.P Koirala
              Institute of Health and Sciences, Dharan (3 years)
            </li>
            <li>
              2007-2011 – Undergraduate medical course, Bachelor in Medicine and
              Bachelor in Surgery (MBBS), Nepal Medical College and Teaching
              Hospital, Kathmandu (4 and half years)
            </li>
            <li>
              2011-2012 – 1 year of compulsory rotatory internship, Nepal
              Medical College and Teaching Hospital
            </li>
          </ul>
        </div>
      </div>
    </div>
  </body>
</html>
