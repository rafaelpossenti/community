<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Home page</title>
</head>
<body>
	<h2>Company Home page </h2>
	Welcome to Company Home Page
	
	<hr>
	
	<!-- display user name and role -->
	<p>
		User: <security:authentication property="principal.username"/>
		<br><br>
		Role(s): <security:authentication property="principal.authorities"/>
	</p>
	
	<hr>
	
	<security:authorize access="hasRole('MANAGER')"> 
		<p>
			<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a> (Only for Manager peeps)
		</p>
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a> (Only for Admin peeps)
		</p>
	</security:authorize>
	
	
	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
		<input type="submit" value="logout" />
	</form:form>
	
</body>
</html>