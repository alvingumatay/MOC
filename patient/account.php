<?php
	require_once 'logincheck.php';
	
?>
<!DOCTYPE html>
<html lang = "eng">
	<head>
		<title>MOSC Patient Record System</title>
		<meta charset = "utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "shortcut icon" href = "../images/mosc-logo.png" />
		<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/jquery.dataTables.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/customize2.css" />
		<link  rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.css">
        <link rel="stylesheet" href="../css/css1/dataTables.bootstrap.min.css">
        <!-- Bootstrap social button library -->
        <link rel="stylesheet" href="../css/css1/bootstrap-social.css">
        <!-- Bootstrap select -->
        <link rel="stylesheet" href="../css/css1/bootstrap-select.css">
        <!-- Bootstrap file input -->
       <link rel="stylesheet" href="../css/css1/fileinput.min.css">
       <!-- Awesome Bootstrap checkbox -->
       <link rel="stylesheet" href="../css/css1/awesome-bootstrap-checkbox.css">
       <!-- Admin Stye -->
       <link rel="stylesheet" href="../css/css1/style.css">
	   <!-- CSS Just for demo purpose, don't include it in your project -->
        
		<?php require 'script.php'?>
		</head>
<body>
	<?php include('includes/header.php');?>
    <br /><br /><br /><br /><br /><br /><br /><br />
  <div class="ts-main-content">
		<br />
		<br />
		<br />
	 <div class = "panel panel-success">
			<div class = "panel-heading">
				<label>PATIENTS LIST</Label>
			</div>
			<div class = "panel-body">
				<table id = "table" class = "display" width = "100%" cellspacing = "0">
					<thead>
						<tr>
							<th>Email</th>
							<th>Name</th>
							<th>Birthdate</th>
							<th>Age</th>
							<th>Address</th>
							
							<th><center>Action</center></th>
						</tr>
					</thead>
					<tbody>
					<?php
						$conn = new mysqli("localhost","root","","hcpms") or die(mysqli_error());
						$query = $conn->query("SELECT * FROM `itr` WHERE `itr_no`='$_SESSION[itr_no]'") or die(mysqli_error());
						while($fetch = $query->fetch_array()){
						$id = $fetch['itr_no'];
						$q = $conn->query("SELECT COUNT(*) as total FROM `complaints` where `itr_no` = '$id' && `status` = 'Pending'") or die(mysqli_error());
						$f = $q->fetch_array();
					?>
						<tr>
							<td><?php echo $fetch['email']?></td>
							<td><?php echo $fetch['firstname']." ".$fetch['lastname']?></td>
							<td><?php echo $fetch['birthdate']?></td>				
							<td><?php echo $fetch['age']?></td>				
							<td><?php echo $fetch['address']?></td>
							<td><center><a href = "edit_account.php?id=<?php echo $fetch['itr_no']?>&lastname=<?php echo $fetch['lastname']?>" class = "btn btn-sm btn-warning"><span class = "glyphicon glyphicon-pencil"></span> Update</a></center></td>
						</tr>
					<?php
						}
						$conn->close();
					?>
					</tbody>
					</table>
			</div>
		</div>
		
	
	</div>
	<div id = "footer">
		<label class = "footer-title">&copy; Copyright MOSC Patient Record System 2020</label>
	</div>
		
</body>
<script src="../js/js1/bootstrap-select.min.js"></script>
    <script src="../js/js1/bootstrap.min.js"></script>
     <script src="../js/js1/main.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {          
          setTimeout(function() {
            $('.succWrap').slideUp("slow");
          }, 3000);
          });
  </script>	
</html>