<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>

<head>
	<title>List Students</title>
	
	<!-- reference our style sheet -->
	
	<link type = "text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>
	
	<div id="wrapper">
		<div id = "header">
			<h2> Norfolk State University Student Database</h2>
		</div>	
	</div>
	
	<div id="container">
	
		<div id = "content">
		
		<!-- put new button: Add student  -->
		
		<input type="button" value="Add Student"
			onClick="window.location.href='showFormForAdd'; return false;" 
			class ="add-button"
			/>
		
		<!--  add html table here -->
		
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
			
			<!-- loop over and print out students -->
			<c:forEach var="tempStudent" items="${students}">
			
				<!--contruct an update link with student id  -->
				<c:url var="updateLink" value="/student/showFormForUpdate">
					<c:param name="studentId" value="${tempStudent.id }" />
				</c:url>	
				
				<!--contruct an delete link with student id  -->
				<c:url var="deleteLink" value="/student/delete">
					<c:param name="studentId" value="${tempStudent.id }" />
				</c:url>	
			
				
				<tr>
					<td> ${tempStudent.firstName} </td>
					<td> ${tempStudent.lastName}</td>
					<td> ${tempStudent.email}</td>
					
					<td>
					<!-- update link -->
					
					<a href="${updateLink}">Update</a>
					|
					<a href="${deleteLink}"
						onclick="if (!(confirm('Are you sure you want to delete this?')))return false">Delete</a>
						
					</td>
					
				</tr>
			
			</c:forEach>
		
		</table>
		
		</div>
	
	</div>


</body>




</html>