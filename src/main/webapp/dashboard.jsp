<%@ page language = "java"
    contentType = "text/html; charset=UTF-8"
    pageEncoding = "UTF-8" 
%>

<%@ page import="com.example.entity.Student,
                    com.example.controllers.StudentManager,
                    java.util.List" 
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Dashboard - Student Management System</title>
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
	
	
    <h2> Welcome to the Student Dashboard</h2>
    
<% 
   	try{
   		List<Student> students = new StudentManager().getAllStudents();
		
    		if(students !=null && !students.isEmpty()){
%>



<table>
	<thead>
		<tr>
			<th>SrNo. </th>
			<th>UID </th>
			<th>Name </th>
			<th>Surname </th>
			<th>Phone Number </th>
			<th>Operations</th>
		</tr>
	</thead>
	<tbody>
		<%
			for (Student stu: students){	
		%>
		<tr>
			<td> <%= stu.getId() %> </td>
			<td> <%= stu.getUid() %> </td>
			<td> <%= stu.getFirstName() %> </td>
			<td> <%= stu.getLastName()%> </td>
			<td> <%= stu.getNumber()%> </td>
			<td> <a href="operations/UpdateStudent.jsp?id=<%=stu.getId()%>"><button style="color:black;background-color: yellow">Edit</button></a>
                 <a href="operations/DeleteStudent.jsp?id=<%=stu.getId()%>"><button style="color: black;background-color: pink">Delete</button></a>
		</tr>
		
		<% 
			} 
		%>
	</tbody>
	<tfoot>
        <tr>
            <td colspan="2"> Student Management System</td>
        </tr>
      </tfoot>
</table>






<%     			    			
    		}
    		else{
    			out.println("<h2>No students found.</h2>");
    		}
    	}
        catch(Exception e){
    		out.println("<h2>Error loading students: " + e.getMessage() + "</h2>");
    	}
%>
    
    <aside>
    	<a href="index.jsp">Back to Home</a>
    	<a href="addStudentForm.jsp">Add New Student</a>
    </aside>
  
	
	</main>
	<footer>
	</footer>

</body>        
</html>	