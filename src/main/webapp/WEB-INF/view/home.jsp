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
    		<h1 class="h2">Dashboard</h1>
	    </div> <!-- /#top -->
		
				    
     	<hr />
     	<div class="row">
  				<div class="col-md-4">
  					<div id="chartContainer" style="height: 300px; width: 100%;"></div>
  				</div>
  				<div class="col-md-4">
  					<div id="chartContainer1" style="height: 300px; width: 100%;"></div>
  				</div>
  				<div class="col-md-4">
  					<div id="chartContainer2" style="height: 300px; width: 100%;"></div>
  				</div>
		</div> <!-- /#body -->
 			
     	<div id="bottom" class="row">
    		
		</div> <!-- /#bottom -->
	 
	 </div>  <!-- /#main -->
	

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
	 <!-- Graphs -->
    <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

	<script type="text/javascript">
		window.onload = function () {
			var chart = new CanvasJS.Chart("chartContainer", {
				animationEnabled: true,
				title:{
					text: "Task Categories TEMPLATE",
					horizontalAlign: "left"
				},
				data: [{
					type: "doughnut",
					indexLabelFontSize: 10,
					indexLabel: "{label} - #percent%",
					toolTipContent: "<b>{label}:</b> {y} (#percent%)",
					dataPoints: [
						{  y: 418, label: "Vollunter" },
						{  y: 217, label: "IT" },
						{  y: 312, label: "Construction" },
						{  y: 117, label: "Agriculture"},
						{  y: 172, label: "HouseKepper" },
						{  y: 430, label: "Cleaner"},
						{  y: 171, label: "Parties"}
					]
				}]
			});
			chart.render();
			
			var chart1 = new CanvasJS.Chart("chartContainer1", {
				animationEnabled: true,
				title:{
					text: "Task Categories TEMPLATE",
					horizontalAlign: "left"
				},
				data: [{
					type: "doughnut",
					indexLabelFontSize: 10,
					indexLabel: "{label} - #percent%",
					toolTipContent: "<b>{label}:</b> {y} (#percent%)",
					dataPoints: [
						{  y: 418, label: "Vollunter" },
						{  y: 217, label: "IT" },
						{  y: 312, label: "Construction" },
						{  y: 117, label: "Agriculture"},
						{  y: 172, label: "HouseKepper" },
						{  y: 430, label: "Cleaner"},
						{  y: 171, label: "Parties"}
					]
				}]
			});
			chart1.render();
			
			var chart2 = new CanvasJS.Chart("chartContainer2", {
				animationEnabled: true,
				title:{
					text: "Task Categories TEMPLATE",
					horizontalAlign: "left"
				},
				data: [{
					type: "doughnut",
					indexLabelFontSize: 10,
					indexLabel: "{label} - #percent%",
					toolTipContent: "<b>{label}:</b> {y} (#percent%)",
					dataPoints: [
						{  y: 418, label: "Vollunter" },
						{  y: 217, label: "IT" },
						{  y: 312, label: "Construction" },
						{  y: 117, label: "Agriculture"},
						{  y: 172, label: "HouseKepper" },
						{  y: 430, label: "Cleaner"},
						{  y: 171, label: "Parties"}
					]
				}]
			});
			chart2.render();
		}
	</script>

		
		
</body>
</html>