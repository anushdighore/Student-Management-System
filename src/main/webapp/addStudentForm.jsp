<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add Student</title>
    <link rel="stylesheet" href="index.css">
</head>
<body class="body">
	
<header class="header">

		<nav class="navigation-bar">
			<a href="index.jsp">Home</a> |
            <a href="addStudentForm.jsp">Add Student</a> |
            <a href="dashboard.jsp">View Students</a>
		</nav>
		<h1>Student Management System</h1>

</header>
<main class="main-container">

    <h2>Adding New Student</h2>
	
	<div class="form-container">
	<form action="addStudent.jsp" method="POST">
		<!-- Form for adding students -->
		
		<div>
			<label for="name">Name: </label><br>
			<input type="text" id="name" name="name" required><br><br>
		</div>
		
		<div>
			<label for="lastname">Last Name: </label><br>
			<input type="text" id="lastname" name="lastname" required><br><br>
		</div>
		
		<div>
			<label for="number">Phone Number: </label><br>
			<input type="tel" id="number" name="number" required><br><br>
		</div>
		
		<div>
			<label for="uid">UID: </label><br>
			<input type="number" id="uid" name="uid" required><br><br>
		</div>
		
		<input type="submit" value="Submit">
	</form>
	</div>
</main>
<footer>
</footer>

</body>
</html>
