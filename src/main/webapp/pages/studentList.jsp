<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>
<%@ page import="com.example.entity.Student, com.example.controllers.StudentManager, java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
    <style>
    	table{
			border-collapse:collapse;            
    	}
    	th,td{
    		border: 1px solid black;
    	}
    	th {
 		   background-color: #f2f2f2;	
		}
    </style>
</head>

<body>
 <h1>Student Management System</h1>
 <h2>Student List</h2>

 <%
  try {
   List<Student> students = new StudentManager().getAllStudents();
   
   if (students != null && !students.isEmpty()) {
 %>
   <table>
     <tr>
       <th>ID</th>
       <th>First Name</th>
       <th>Last Name</th>
       <th>Phone Number</th>
       <th>UID</th>
     </tr>
     <%
       for (Student student : students) {
     %>
     <tr>
       <td><%= student.getId() %></td>
       <td><%= student.getFirstName() %></td>
       <td><%= student.getLastName() %></td>
       <td><%= student.getNumber() %></td>
       <td><%= student.getUid() %></td>
     </tr>
     <%
       }
     %>
   </table>
 <%
   } else {
     out.println("<p>No students found.</p>");
   }
  } catch (Exception e) {
   out.println("<p>Error loading students: " + e.getMessage() + "</p>");
  }
 %>

 <br><br>
 <a href="addStudentForm.jsp">Add New Student</a>

</body>
</html>