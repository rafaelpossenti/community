<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Community</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">


</head>
<body>

	<nav class="navbar navbar-inverse navbar-static-top ">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
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
				<h2>Member</h2>
			</div>
		</div>
		<!-- /#top -->


		<hr />
		<div id="custom" class="row">
			<form:form action="saveCustomer" modelAttribute="customer"
				method="POST">

				<form:hidden path="id" />
				<div class="container">
				
				<div class="row">
					<div class="col-sm">
						<label for="firstName">Title</label>
						<form:input type="text" path="firstName" class="form-control"
							placeholder="" value="" />
					</div>
				</div>
				<div class="row">
					<div class=col-sm">
						<label for="lastName">Description</label>
						<textarea class="form-control" style="resize: vertical" path="lastName" rows="3"></textarea>
						
					</div>
				</div>
				<div class="row">
					<div class="col-sm">
						<label for="email">Information Contact</label>
						<form:input type="text" path="email" class="form-control"
							placeholder="phone or email" />
					</div>
				</div>
				
				<div class="row">
					<div class="col-sm">
						<label for="firstName">Responsable<span class="text-muted">(Optional here)</span></label>
						<select class="form-control">
  							<option>Change here 1</option>
  							<option>Change here 2</option>
  							<option>Change here 3</option>
						</select>
						
					</div>
				</div>
				
				<hr class="mb-4">
				<button class="btn btn-primary btn-lg btn-block" type="submit">
					Save</button>
				</div>
			</form:form>
		</div>
		<!-- /#custom -->

		<div id="bottom" class="row"></div>
		<!-- /#bottom -->

	</div>
	<!-- /#main -->


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

</body>
</html>



