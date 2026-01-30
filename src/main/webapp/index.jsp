<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
    <link rel="stylesheet" href="index.css">
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
		<h2>Welcome to the Student Management System</h2>
        <p>Use the navigation links above to manage students.</p>
	
		<p>
			A Student Management System (SMS) is a software application designed to streamline and automate the administrative tasks of educational institutions. It helps schools, colleges, and universities manage student data efficiently, including enrollment, attendance, grades, and personal information. By centralizing this information, administrators and teachers can access accurate records quickly, reducing paperwork and minimizing errors.
			
		</p>	
		
		<form action="dashboard.jsp" method="get"> 
			<button type="submit">Get Student List</button>
		</form>
		
	</main>
	<footer>
		<p>&copy; 2026 Student Management System</p>
	</footer>	
	
	<script>
	    console.log("Hello from JSP!");
	</script>
	
</body>
</html>