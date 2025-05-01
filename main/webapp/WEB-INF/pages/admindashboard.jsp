<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--@author Aayush Shrestha-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" type="text/css"
    href="${pageContext.request.contextPath}/css/admindashboard.css" />
    <title>Document</title>
</head>


<body>

    <div class="container">
        <div class="leftsidebar">
          <h1>Admin <br> Dashboard</h1>
          <ul>
            <li>
                <a href="${pageContext.request.contextPath}/viewadminprofile" class="profile">
                    <i class='bx bxs-user-account'></i>
                    <span class="text">Profile</span>
                </a>
            </li>
            <li>
                <a href="" class="profile">
                    <i class='bx bxs-user-account'></i>
                    <span class="text">Change Password</span>
                </a>
            </li>
            <li>
                <a href="" class="profile">
                    <i class='bx bxs-user-account'></i>
                    <span class="text">Settings</span>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/logout" class="profile">
                    <i class='bx bxs-user-account'></i>
                    <span class="text">Log Out</span>
                </a>
            </li>
          </ul>
          <div class="doctors">
            <div class="title">
                <h2>Doctors Right Now</h2>
                <i class='bx bxs-time' ></i>
            </div>
            
            <ul>
                <li>Shreeman Subedi</li>
                <li>Jay Laxmi Shrestha</li>
                <li>Bhakta Narayan Swami</li>
                <li>Jiwan Khoju</li>
                <li>Diwali Pant</li>
            </ul>

          </div>
        </div>
    
        <div class="main">
          <div class="toppart">
            <div class="card">
              <div class="first" onclick="location.href='${pageContext.request.contextPath}/addDoc'">
                <h3><i class='bx bxs-user-account'></i>Add Doctors</h3>              
                </div>
            </div>
            <div class="card">
                <div class="first">
                  <h3><i class='bx bxs-user-account'></i>View Doctors</h3>              
                  </div>
              </div>
              <div class="card">
                <div class="first" onclick="location.href='${pageContext.request.contextPath}/editSchedule'">
                  <h3><i class='bx bxs-user-account'></i>Edit Schedule</h3>              
                  </div>
              </div>
              <div class="card">
                <div class="first">
                  <h3><i class='bx bxs-user-account'></i>Change Status</h3>              
                  </div>
              </div>
              <div class="card">
                <div class="first">
                  <h3><i class='bx bxs-user-account'></i>Appointments</h3>              
                  </div>
              </div>
          </div>
    
          <div class="bottompart">
            <h2>Change The Status of Patients</h2>
            <div class="controls">
              <input type="text" class="searchbox" placeholder="Search by info below">
              <select class="select">
                <option>All</option>
                <option>Not Completed</option>
                <option>Completed</option>
              </select> 
            </div>
    
            <div class="table-wrapper">
              <table>
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Status</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Aayush Shrestha</td>
                    <td>ayushrestha.</td>
                    <td>ayushrestha2fb5@gmail.com</td>
                    <td>9849591020</td>
                    <td><span class="status">Not Completed</span></td>
                    <td><button class="btn">Change</button></td>
                  </tr>
                  <tr>
                    <td>Namrata Karki</td>
                    <td>namrata.</td>
                    <td>namrata2fb5@gmail.com</td>
                    <td>9812345678</td>
                    <td><span class="status">Not Completed</span></td>
                    <td><button class="btn">Change</button></td>
                  </tr>
                  <tr>
                    <td>Aayusha Kandel</td>
                    <td>kandel.</td>
                    <td>kandel@gmail.com</td>
                    <td>987645321</td>
                    <td><span class="status">Not Completed</span></td>
                    <td><button class="btn">Change</button></td>
                  </tr>
                  <tr>
                    <td>Seer Pant</td>
                    <td>serasta.</td>
                    <td>spant@gmail.com</td>
                    <td>9823456782</td>
                    <td><span class="status">Not Completed</span></td>
                    <td><button class="btn">Change</button></td>
                  </tr>
                  <tr>
                    <td>Aashika Kambang</td>
                    <td>ashik.</td>
                    <td>ashikakab5@gmail.com</td>
                    <td>9834567890</td>
                    <td><span class="status">Not Completed</span></td>
                    <td><button class="btn">Change</button></td>
                  </tr>
                 
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    
</body>
</html>