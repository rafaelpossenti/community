<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/icon/favion.ico">

    <title>Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
  
  
	<!-- Reference Bootstrap files -->
	<link href="${pageContext.request.contextPath}/resources/css/dist/bootstrap.min.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

	
	<!-- Custom styles for this template -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jumbotron.css" /> 
  
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a  class="navbar-brand" href="#"> </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Premium</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Functions</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="customer/list">List Customer</a>
              <a class="dropdown-item" href="customer/showFormForAdd2">Customer</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <main role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <div class="container">
          <h1 class="display-3">Customer </h1>
          <p></p>
          
        </div>
      </div>

      <div class="container">
	  	<div class="row">
        	<div class="col-md-8 order-md-1">
          		<h4 class="mb-3">New Customer</h4>
         		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
            		<div class="row">
              			<div class="col-md-6 mb-3">
               	 			<label for="firstName">First name</label>
               		 		<form:input type="text" path="firstName"  class="form-control" placeholder="" value="" />
                		</div>
              			<div class="col-md-6 mb-3">
                			<label for="lastName">Last name</label>
                			<form:input type="text" path="lastName" class="form-control" placeholder="" value="" />
             	  	 	</div>
            		</div>
					<div class="mb-3">
              			<label for="email">Email <span class="text-muted">(Optional)</span></label>
              			<form:input type="email"  path="email" class="form-control" placeholder="you@example.com"/>
            		</div>

            		<hr class="mb-4">
            		<button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>
          		</form:form>
       	 	</div>
      	</div>
             
      </div> <!-- /container -->

    </main>

    <footer class="container">
      <p>&copy; Company 2017-2018</p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/resources/js/vendor/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dist/bootstrap.min.js"></script>
  </body>
</html>
