<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!--@author Namrata Karki-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Patient Profile</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/VUprofile.css" />
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

  <!-- Main Content -->
  <div class="main-content">

    <!-- Search Bar -->
    <div class="search-bar">
      <input type="text" placeholder="Search patient by name..." />
    </div>

    <div class="flex-container">

      <!-- Patient Profile Section (now full width) -->
      <div class="profile-card">
        <h2>Patient Profile</h2>

        <div class="profile-top">
          <img src="${pageContext.request.contextPath}/resources/images/default-profile.png" alt="Patient Photo" class="side-photo">
          
          <div class="profile-grid">
            <div><strong>Name:</strong> Jane Doe</div>
            <div><strong>Age:</strong> 29</div>
            <div><strong>Gender:</strong> Female</div>
            <div><strong>Phone:</strong> +9876543210</div>
            <div><strong>Email:</strong> jane@example.com</div>
            <div><strong>Address:</strong> Kathmandu, Nepal</div>
            <div><strong>Past Appointment:</strong> 2025-02-18</div>
            <div><strong>Next Visit:</strong> 2025-05-01</div>
            <div><strong>Department:</strong> Dermatology</div>
            <div><strong>Payment Status:</strong> Pending</div>
          </div>
        </div>

        <div class="action-buttons">
          <button>Send Message</button>
          <button>Download Info</button>
          <button>Update Payment</button>
        </div>
      </div>

    </div>
  </div>

</body>
</html>
