<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--@author Namrata Karki-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Cliniterra – Add New Doctor</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addDoctor.css">
</head>
<body>

  <div class="sidebar1">
    <a href="${pageContext.request.contextPath}/admindashboard">Dashboard</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Schedules</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Doctors</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Patients</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Add Doctors</a>
    <a href="${pageContext.request.contextPath}/admindashboard">Settings</a>
  </div>
  <!-- Main Content -->
  <main class="add-doctor-page">
    
    <!-- Left: Avatar Only -->
    <aside class="sidebar">
        <form action="/upload" method="post" enctype="multipart/form-data">
          <div class="avatar-wrapper">
            <label for="avatarInput" class="add-icon">+</label>
            <div class="placeholder-text">Doctor Avatar</div>
            <img id="avatarPreview" src="" alt="Doctor Avatar" />
          </div>
      
          <label for="avatarInput" class="upload-text-btn">Change Profile Picture</label>
          <input type="file" id="avatarInput" name="avatar" accept="image/*" style="display: none;" />
        </form>
      </aside>
      

    <!-- Right: Form -->
    <section class="form-section">
      <h2>Add New Doctor</h2>
      <form class="doctor-form">
        <div class="form-row">
          <div class="form-group">
            <label for="firstName">First Name *</label>
            <input id="firstName" type="text" placeholder="e.g. John" required />
          </div>
          <div class="form-group">
            <label for="lastName">Last Name *</label>
            <input id="lastName" type="text" placeholder="e.g. Doe" required />
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="email">Email address *</label>
            <input id="email" type="email" placeholder="doctor@cliniterra.com" required />
          </div>
          <div class="form-group">
            <label for="phone">Phone Number</label>
            <input id="phone" type="tel" placeholder="+1 (555) 123‑4567" />
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="specialty">Specialty</label>
            <select id="specialty">
              <option>Marine Medicine</option>
              <option>Cardiology</option>
              <option>Neurologist</option>
              <option>Gynologist</option>
              <option>Opthalmologist</option>
            </select>
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="dob">Date of Birth</label>
            <input id="dob" type="date" />
          </div>
          <div class="form-group radio-group">
            <label class="radio-option" ><input type="radio" name="gender" value="male"> Male</label>
            <label class="radio-option" ><input type="radio" name="gender" value="female"> Female</label>
            <label class="radio-option" ><input type="radio" name="gender" value="other"> Other</label>
          </div>
        </div>

        <div class="form-group">
          <label for="license">Medical License </label>
          <input id="license" type="text" placeholder="e.g. MD123456" />
        </div>

        <div class="form-group">
          <label for="experience">Years of Experience</label>
          <input id="experience" type="number" min="0" placeholder="e.g. 5" />
        </div>

        <div class="form-group">
          <label for="bio">Biography</label>
          <textarea id="bio" rows="4" placeholder="Short bio of the doctor…"></textarea>
        </div>

        <div class="form-row social-row">
          <div class="form-group">
            <label for="linkedin">LinkedIn</label>
            <input id="linkedin" type="url" placeholder="https://linkedin.com/…" />
          </div>
        </div>

        <div class="form-actions">
          <button type="reset" class="btn-cancel">Discard</button>
          <button type="submit" class="btn-save">Add Doctor</button>
        </div>
      </form>
    </section>
  </main>

  
  <script>
    // avatar preview
    const inp = document.getElementById('avatarInput');
    const img = document.getElementById('avatarPreview');
    inp.addEventListener('change', () => {
      const [file] = inp.files;
      if (file) img.src = URL.createObjectURL(file);
    });
  </script>
</body>
</html>