<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Table</title>
<!-- Data tabels Styles and script -->
<!-- adding css-->
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

<!-- Adding JQuery-->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

<!-- Adding JQuery-->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<!-- Adding datatabels cdn -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>
</head>
<body>
 <div class="container-fluid">
        <div class="row">
          <!-- Navbar -->
            <div class="col-lg-12">
              <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                <div class="container-fluid">
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="http://localhost:9090/home">Home</a></li>
                    <li><a href="http://localhost:9090/creation">Creation</a></li>
                   
					<li><a href="http://localhost:9090/table">Table</a></li>
					<li><a href="http://localhost:9090/ajaxtable">Ajex Table</a></li>
					<li><a href="http://localhost:9090/modal">Modal Table</a></li>
					<li><a href="http://localhost:9090/datatable">Data Table</a></li>
					<li><a href="http://localhost:9090/login"><span class="glyphicon glyphicon-user"></span>Log Out</a></li>
					<li><img style="padding-left: 200px" alt="FA logo" src="https://www.timesascent.com/images/printAd/2021/9/22/FAS_new.png" height="50px"></li>
				  </ul>
                </div>
             </nav>
            </div>
          <!-- /#Navbar -->
        </div>
      </div>
    <!-- /#header -->
    <!-- table -->
    <div class="container-fluid">
        <div class="row">    
            <div class="col-lg-12">
            <table id="example" class="display">
			<thead>
				<tr>
					<th>Name</th>
					<th>phone</th>
					<th>Email</th>
					<th>Password</th>
					<th>City</th>
					<th>State</th>
					<th>ZipCode</th>
					<th>Gender</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${data}" var="itr">
					<tr>
						<td>${itr.name}</td>
						<td>${itr.phone}</td>
						<td>${itr.email}</td>
						<td>${itr.password}</td>
						<td>${itr.city}</td>
						<td>${itr.state}</td>
						<td>${itr.zipcode}</td>
						<td>${itr.gender}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
            
            </div>
            </div>
            </div>
     <!-- /#table -->        
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