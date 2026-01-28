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
    <link rel="stylesheet" href="../styles/dashboard.css">
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

    <h1> Welcome to the Student Dashboard</h1>
    
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
    
    
    
  
</body>        
</html>	