<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
<!DOCTYPE html>
<html>
  <head>
    <title>Educational registration form</title>
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 16px;
      color: #eee ;
      }
      body {
      background: url("https://media.istockphoto.com/id/1413840933/photo/old-books-on-wooden-shelf-tiled-bookshelf-background-concept-on-the-theme-of-history.webp?b=1&s=170667a&w=0&k=20&c=1Npv4ypDzrRYfcKmz1FpolYgeLWC5ndy9VGcgC7Odvs=") no-repeat center;
      background-size: cover;
      }
      h1, h2 {
      text-transform: uppercase;
      font-weight: 400;
      }
      h2 {
      margin: 0 0 0 8px;
      }
      .main-block {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100%;
      padding: 25px;
      background: rgba(0, 0, 0, 0.5); 
      }
      .left-part, form {
      padding: 25px;
      }
      .left-part {
      text-align: center;
      }
      .fa-graduation-cap {
      font-size: 72px;
      }
      form {
      background: rgba(0, 0, 0, 0.7); 
      }
      .title {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
      }
      .info {
      display: flex;
      flex-direction: column;
      }
      input, select {
      padding: 5px;
      margin-bottom: 30px;
      background: transparent;
      border: none;
      border-bottom: 1px solid #eee;
      }
      .errorAlert
      {
      color: white;
      backgound-color: red;
      
      }
      input::placeholder {
      color: #eee;
      }
      option:focus {
      border: none;
      }
      option {
      background: black; 
      border: none;
      }
      .checkbox input {
      margin: 0 10px 0 0;
      vertical-align: middle;
      }
      .checkbox a {
      color: #26a9e0;
      }
      .checkbox a:hover {
      color: #85d6de;
      }
      .btn-item, button {
      padding: 10px 5px;
      margin-top: 20px;
      border-radius: 5px; 
      border: none;
      background: #26a9e0; 
      text-decoration: none;
      font-size: 15px;
      font-weight: 400;
      color: #fff;
      }
      .btn-item {
      display: inline-block;
      margin: 20px 5px 0;
      }
      button {
      width: 100%;
      }
      button:hover, .btn-item:hover {
      background: #85d6de;
      }
      @media (min-width: 568px) {
      html, body {
      height: 100%;
      }
      .main-block {
      flex-direction: row;
      height: calc(100% - 50px);
      }
      .left-part, form {
      flex: 1;
      height: auto;
      }
      }
    </style>
  </head>
  <body>
  
    <div class="main-block">
      <div class="left-part">
      
      <div class="errorAlert">
      <div class="alert alert-danger" role="alert">
        Error Found: 
        <form:errors path="student.*"/> 
        <p>Please try again </p>
        </div> </div>
        
        <i class="fas fa-graduation-cap"></i>
        
        <h1>Register to our courses</h1>
        <p>W3docs provides free learning materials for programming languages like HTML, CSS, Java Script, PHP etc.</p>
        <div class="btn-group">
          <a class="btn-item" href="https://www.w3docs.com/learn-html.html">Learn HTML</a>
          <a class="btn-item" href="https://www.w3docs.com/quiz/#">Select Quiz</a>
        </div>
      </div>
      
      <form action="handleform" method="post">
        <div class="title">
          <i class="fas fa-pencil-alt"></i> 
          
        
          <h2>Register here</h2>
        </div>
        
        <div class="info">
          <input class="fname" type="text" name="name" placeholder="Full name" required>
          <input type="text" name="email" placeholder="Email" required>
          <input type="text" name="phn" placeholder="Phone number" required>
          <div class="card">
          <p>Your Address</p>
          <input type="text" name="address.street"
           placeholder="Street">
          <input type="text" name="address.city" 
          placeholder="city">
          </div>
          <input type="password" name="password" placeholder="Password" required >
          <select name ="course" required>
            <option value="course-type" selected>Course type*</option>
            <option value="short-courses">Short courses</option>
            <option value="featured-courses">Featured courses</option>
            <option value="undergraduate">Undergraduate</option>
            <option value="diploma">Diploma</option>
            <option value="certificate">Certificate</option>
            <option value="masters-degree">Masters degree</option>
            <option value="postgraduate">Postgraduate</option>
          </select>
          <select name ="subject" multiple required>
            <option value="subject">Subject</option>
            <option value="java">Java</option>
            <option value="python">Python</option>
            <option value="mern">MERN</option>
            </select>
        </div>
        <div class="checkbox">
          <input type="checkbox" name="checkbox" required><span>I agree to the <a href="#">Privacy Policy for SearchGame.</a></span>
        </div>
        <button type="submit" href="/">Submit</button>
      </form>
    </div>
  </body>
</html>