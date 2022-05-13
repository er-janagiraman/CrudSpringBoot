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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Ajax Table</title>
<!-- Data tabels Styles and script -->
<!-- adding css-->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

<!-- Adding JQuery-->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

<!-- Adding JQuery-->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<!-- Adding datatabels cdn -->
<script
	src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
	
	<script
 src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
<script
 src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script
 src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script
 src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script
 src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
<script
 src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>
	
	

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
	/* $(document).on('click', '#getDataBtn', function(){ */
	$(document).ready(function() {
							$.ajax({
									url : "http://localhost:9090/ajaxdata",
									data : "",
									type : "GET",
									dataType : "json",
									success : function(response) {

										console.log(response);
										//$('#myrenewalview').html(table);
										var table = $('#prjView')
												.DataTable(
														{
															data : response,
															dom : 'Bfrtip',
															buttons : [ 'copy',
																	'csv',
																	'excel',
																	'pdf',
																	'print' ],

															columns : [

																	{
																		title : "Email",
																		"data" : "email"
																	},
																	{
																		title : "Password",
																		"data" : "password"
																	},
																	{
																		title : "Name",
																		"data" : "name"
																	},
																	{
																		title : "Phone",
																		"data" : "phone"
																	},
																	{
																		title : "City",
																		"data" : "city"
																	},
																	{
																		title : "State",
																		"data" : "state"
																	},
																	{
																		title : "Zip Code",
																		"data" : "zipcode"
																	},
																	{
																		title : "Gender",
																		"data" : "gender"
																	},
																	{
																		title : "Action",
																		"data" : "phone",
																		"fnCreatedCell" : function(data) {
																			$(data).html("<input type='button' class='btn btn-warning' data-toggle='modal' data-target='#myModal' value='edit'>");
																		}
																	},
																	

															]
														
														
														});
										$('#prjView tbody').on('click', '.btn-warning', function () {
								              var email = $(this).closest('tr').find('td:eq(0)').text();
								              var password = $(this).closest('tr').find('td:eq(1)').text();
								              var name = $(this).closest('tr').find('td:eq(2)').text();
								              var phone = $(this).closest('tr').find('td:eq(3)').text();
								              var city = $(this).closest('tr').find('td:eq(4)').text();
								              var state = $(this).closest('tr').find('td:eq(5)').text();
								              var zipcode = $(this).closest('tr').find('td:eq(6)').text();
								              var gender = $(this).closest('tr').find('td:eq(7)').text();
								              
								            
								              document.getElementById('email').value = email;
								              document.getElementById('password').value = password;
								              document.getElementById('name').value = name;
								              document.getElementById('phone').value = phone;
								              document.getElementById('city').value = city;
								              document.getElementById('state').value = state;
								              document.getElementById('zipcode').value = zipcode;
								              
								              
								              if(gender=="male"){  
								                  $('input[name=gender]:eq(0)').prop('checked', true);
								                  }else{
								                  $('input[name=gender]:eq(1)').prop('checked', true);
								                  }

								             
								              } );

									},
									error : function() {
										Swal.fire({
													icon : 'error',
													title : 'Oops...',
													text : 'Something went wrong!',
													footer : '<a href="">Why do I have this issue?</a>'
												})
									}
								});

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
							<li><img style="padding-left: 200px" alt="FA logo"
								src="https://www.timesascent.com/images/printAd/2021/9/22/FAS_new.png"
								height="50px"></li>
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
				<table id="prjView" class="display">

				</table>

			</div>
		</div>
	</div>
	<!-- /#table -->
	
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			
			<div class="modal-content">
			<form action="/edit1" method="get">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Edit</h4>
					</div>
					<div class="modal-body">
						<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> <input type="text"
								name="email" class="form-control" id="email"
								placeholder="Enter Email">
						</div>
						
						<div class="form-group col-md-6">
							<label for="inputPassword4">Password</label> <input
								type="text" name="password" class="form-control"
								id="password" placeholder="Password">
						</div>
					</div>
					<div class="form-row">
					<div class="form-group col-md-6">
							<label for="inputPassword4">Name</label> <input
								type="text" name="name" class="form-control"
								id="name" placeholder="Enter Name">
						</div>
					<div class="form-group col-md-6">
						<label for="inputAddress2">Phone</label> <input type="text"
							name="phone" class="form-control" id="phone"
							placeholder="Enter Phone No">
					</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-4">
						<label for="inputAddress2">Date Of Birth</label> <input type="date"
							name="dob" class="form-control" id="dob"
							placeholder="Enter Date Of Birth">
					</div>
						<div class="form-group col-md-4">
							<label for="inputCity">City</label> <input type="text"
								name="city" class="form-control" id="city" placeholder="Enter City">
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">State</label> <select id="state"
								name="state" class="form-control">
								<option selected>TN</option>
								<option>PY</option>
								<option>AP</option>
								<option>KL</option>
								<option>KA</option>
							</select>
						</div>
						
					</div>
					<div class="form-row">
					<div class="form-group col-md-4">
							<label for="inputZip">Zip Code</label> <input type="text"
								name="zipcode" class="form-control" id="zipcode">
						</div>
					<div class="form-check col-md-4">
							<label class="form-check-label" for="flexRadioDefault1">Gender</label><br>
  							<input class="form-check-input" type="radio" value="male" name="gender" id="gender">
 							 <label class="form-check-label" for="flexRadioDefault1">Male</label>
 							 <input class="form-check-input" type="radio" value="female" name="gender" id="gender">
 							 <label class="form-check-label" for="flexRadioDefault1">FeMale</label>
					</div>
					<div class="form-group col-md-4">
							<label for="inputState">Team</label> <select id="team"
								name="team" class="form-control">
								<option selected>RS</option>
								<option>Go Policy</option>
								<option>LIC</option>
								<option>OBS</option>
							</select>
						</div>
					</div>
											
						</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-success">Submit</button>
					</div>
					</form>
				</div>
			
			</div>

		</div>
	<style>
    body {
    	background-color:rgb(195, 248, 245);
    }
	</style>	
</body>
</html>