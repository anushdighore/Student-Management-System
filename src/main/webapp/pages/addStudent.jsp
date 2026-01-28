<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="UTF-8" %>

<%@ page import="com.example.entity.Student,
					com.example.controllers.StudentManager" %>
		
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>

<body>
	<% 
	
	try {
		String firstname = request.getParameter("name");
		String lastname = request.getParameter("lastname");
		String phoneStr = request.getParameter("number");
		String uidStr = request.getParameter("uid");
		
		
		
		if(firstname != null && lastname !=null && phoneStr != null && uidStr != null){
			firstname = firstname.trim();
            lastname = lastname.trim();
            phoneStr = phoneStr.trim();
            uidStr = uidStr.trim();
            
            long phone = Long.parseLong(phoneStr);
            long uid = Long.parseLong(uidStr);
            
            Student stu = new Student();
            stu.setFirstName(firstname);
            stu.setLastName(lastname);
            stu.setNumber(phone);
            stu.setUid(uid);
            
            StudentManager sm = new StudentManager();
            sm.addStudent(stu);
            out.println("<h2> Student added successfully! </h2>");
            response.sendRedirect("studentList.jsp");
		}
		else{
			out.println("<h2> Error!<br> Please enter all values </h2>");
		}
		
		
	} catch (NumberFormatException e) {
		out.println("<h2>Error: Phone number and UID must be valid numbers!</h2>");
	}
	
	%>
		
</body>



</html>