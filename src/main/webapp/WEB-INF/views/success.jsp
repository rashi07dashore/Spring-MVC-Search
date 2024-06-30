<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Success</title>
</head>
<body>
<h1> Hello </h1>
<h2>Please check your contact details</h2>
<h2>Name is ${student.name }</h2>
<h2> Email is ${student.email }</h2>
<h2>Selected course is ${student.course }</h2>
<h2>Address is ${student.address.street } , ${student.address.city }</h2>
<form action="home">
<button type="submit">Submit</button>
</form>

</body>
</html>