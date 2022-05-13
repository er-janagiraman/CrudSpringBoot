<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>table</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<!-- Navbar -->
			<div class="col-lg-12">
				<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">FA Softwares</a>
						</div>
						<ul class="nav navbar-nav">
							<li class="active"><a href="http://localhost:9090/home">Home</a></li>
							<li><a href="http://localhost:9090/creation">Creation</a></li>
							
							<li><a href="http://localhost:9090/table">Table</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<!-- /#Navbar -->
		</div>
	</div>
	<!-- /#header -->
	<div class="container-fluid">
		<div class="row">
			<!-- Table -->
			<div class="col-lg-12">
				<h2>HTML Table</h2>
				<br>
				<table>
					<thead>
						<tr>
							<th>Name</th>
							<th>Phone</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${data}" var="itr">
							<tr>
								<td>${itr.name}</td>
								<td>${itr.phone}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<style>
table, th, td {
	border: 1px solid black;
}
</style>
<style>
    body {
    	background-color:rgb(195, 248, 245);
    }
	</style>
</body>
</html>