<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
 	<meta http-equiv="X-UA-Compatible" content="IE=edge">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<title>Community</title>

 	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	
</head>
<body> 

	<nav class="navbar navbar-inverse navbar-static-top ">
 	<div class="container-fluid">
  		<div class="navbar-header">
   			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			    <span class="sr-only">Toggle navigation</span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
   			</button>
   			<a class="navbar-brand" href="#">Community</a>
  		</div>
  		<div id="navbar_menu" class="navbar-collapse collapse">
	    	<ul class="nav navbar-nav navbar-right">
	    		<li><a href="${pageContext.request.contextPath}/"">Home</a></li>
	    		<li><a href="#">Village</a></li>
	    		<li><a href="${pageContext.request.contextPath}/list">Member</a></li>
	    		<li><a href="#">Task</a></li>
	    		<li><a href="#">Perfil</a></li>
	    		<li><a href="#">Logout</a></li>
	   		</ul>
  		</div>
 	</div>
	</nav>

	<div id="main" class="container-fluid">
    	<div id="top" class="row">
	    	<div class="col-md-3">
	        	<h2>Tasks</h2>
	    	</div>
	 
	    	<div class="col-md-6">
	        	<form:form action="search" method="POST">
	        		<div class="input-group h2">
	           			<input name="searchName" id="search"  class="form-control"  type="text" placeholder="Search">
	            		<span class="input-group-btn">
	                		<button class="btn btn-primary" type="submit">
	                    		<span class="glyphicon glyphicon-search"></span>
	                		</button>
	            		</span>
	            	</div>
	        	</form:form>
	    	</div>
	 
	    	<div class="col-md-3">
	        	<a href="showFormForAddTask" class="btn btn-primary pull-right h2">New Task</a>
	    	</div>
		</div> <!-- /#top -->
		
				    
     	<hr />
     	<div id="list" class="row">
 
   			<div class="table-responsive col-md-12">
        		<table class="table table-striped" cellspacing="0" cellpadding="0">
            		<thead>
                		<tr>
		                    <th>ID</th>
		                    <th>First Name</th>
		                    <th>Last Name</th>
		                    <th>Email</th>
		                    <th class="actions">Ações</th>
                 		</tr>
            		</thead>
            		<tbody>
            			<c:forEach var="tempCustomer" items="${customers}">
 						
	 						<c:url var="updateLink" value="showFormForUpdate">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>
							<c:url var="deleteLink" value="delete">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>
						
	 						<tr>
			                    <td>${tempCustomer.id}</td>
			                    <td>${tempCustomer.firstName}</td>
			                    <td>${tempCustomer.lastName}</td>
			                    <td>${tempCustomer.email}</td>
			                    <td class="actions">
			                        <a class="btn btn-success btn-xs" href="#">View</a>
			                        <a class="btn btn-warning btn-xs" href="${updateLink}">Update</a>
			                        <a class="btn btn-danger btn-xs"  href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this customer ?')))">Delete</a>
			                    </td>
			                </tr>
		                </c:forEach>
 					</tbody>
         		</table>
 			</div>
 		</div> <!-- /#list -->
 
     	<div id="bottom" class="row">
    		<div class="col-md-12">
         
		        <!--  
		        <ul class="pagination">
		            <li class="disabled"><a>&lt; Anterior</a></li>
		            <li class="disabled"><a>1</a></li>
		            <li><a href="#">2</a></li>
		            <li><a href="#">3</a></li>
		            <li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
		        </ul> 
		        -->
 				
 				
 				<tag:paginate max="8" offset="${offset}" count="${count}" uri="list" next="&raquo;" previous="&laquo;" />
 				
    		</div>
		</div> <!-- /#bottom -->
	 
	 </div>  <!-- /#main -->
	

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>
</html>

	
	
		
