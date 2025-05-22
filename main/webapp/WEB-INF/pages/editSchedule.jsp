<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--@author Aayusha Kandel-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Schedule</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/editSchedule.css">
</head>
<body>

   <!-- Sidebar -->
   <div class="sidebar">
    <a href="${pageContext.request.contextPath}/admindashboard">Dashboard</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Schedules</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Doctors</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Patients</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Add Doctors</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Settings</a>
  </div>
  
 <!--Main-->   
<div class="container">
    <h2>Edit Doctor Schedule</h2>
    
    <form>
      <label for="fullname">Doctor Full Name</label>
      <select id="Doctor Name">  
        <option>Dr.Smith</option>
        <option>Dr.Lee</option>
        <option>Dr.Sanduk Ruit</option>
      </select>

  
      <label for="email">Email</label>
      <input type="email" id="email" name="email" value="">
  
      <h3>Weekly Schedule</h3>
  
      <!-- Weekly Schedule -->

      <div class="schedule-row">
        <label for="sunday">Sunday</label>
        <select id="sunday">
          <option value="na">Not Available</option>
          <option>8:00 AM - 10:00 PM</option>
          <option>10:00 AM - 12:00 PM</option>
          <option>12:00 AM - 2:00 PM</option>
          <option>2:00 PM - 5:00 PM</option>
          <option>Full Day</option>
        </select>
      </div>

      <div class="schedule-row">
        <label for="monday">Monday</label>
        <select id="monday">
          <option value="na">Not Available</option>
          <option>8:00 AM - 10:00 PM</option>
          <option>10:00 AM - 12:00 PM</option>
          <option>12:00 AM - 2:00 PM</option>
          <option>2:00 PM - 5:00 PM</option>
          <option>Full Day</option>
        </select>
      </div>
  
      <div class="schedule-row">
        <label for="tuesday">Tuesday</label>
        <select id="tuesday">
          <option value="na">Not Available</option>
          <option>8:00 AM - 10:00 PM</option>
          <option>10:00 AM - 12:00 PM</option>
          <option>12:00 AM - 2:00 PM</option>
          <option>2:00 PM - 5:00 PM</option>
          <option>Full Day</option>
        </select>
      </div>
  
      <div class="schedule-row">
        <label for="wednesday">Wednesday</label>
        <select id="wednesday">
          <option value="na">Not Available</option>
          <option>8:00 AM - 10:00 PM</option>
          <option>10:00 AM - 12:00 PM</option>
          <option>12:00 AM - 2:00 PM</option>
          <option>2:00 PM - 5:00 PM</option>
          <option>Full Day</option>
        </select>
      </div>
  
      <div class="schedule-row">
        <label for="thursday">Thursday</label>
        <select id="thursday">
          <option value="na">Not Available</option>
          <option>8:00 AM - 10:00 PM</option>
          <option>10:00 AM - 12:00 PM</option>
          <option>12:00 AM - 2:00 PM</option>
          <option>2:00 PM - 5:00 PM</option>
          <option>Full Day</option>
        </select>
      </div>
  
      <div class="schedule-row">
        <label for="friday">Friday</label>
        <select id="friday">
          <option value="na">Not Available</option>
          <option>8:00 AM - 10:00 PM</option>
          <option>10:00 AM - 12:00 PM</option>
          <option>12:00 AM - 2:00 PM</option>
          <option>2:00 PM - 5:00 PM</option>
          <option>Full Day</option>
        </select>
      </div>

      <button type="submit">Save Schedule</button>
    </form>
  </div>




</body>
</html>