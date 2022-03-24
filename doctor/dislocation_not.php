<?php
    ob_start();b13_24703675_hcpms
    require_once 'logincheck.php';
	$conn = new mysqli("sql312.byethost.com","b13_24703675","wbpn427z","b13_24703675_hcpms") or die(mysqli_error());
	$query = $conn->query("SELECT * FROM `user` WHERE `user_id` = '$_SESSION[user_id]'") or die(mysqli_error());
	$fetch = $query->fetch_array();
?>
<?php include'add_query.php';?>
<!DOCTYPE html>
<html lang = "en">
	<head>	
		<title>MOSC Patient Records System</title>
		<meta charset = "UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "shortcut icon" href = "../images/mosc-logo.png" />
		<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/jquery.dataTables.css" />
        <link rel="stylesheet" type="text/css" href="../css/stylecont.css">
		<link rel = "stylesheet" type = "text/css" href = "../css/customize.css" />
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
   </head>
	<body>
	<?php include('includes/header.php');?>
    <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>
  <div class="ts-main-content">
		<div class = "panel panel-warning">
			<div class = "panel-heading">
				<center><label>DISLOCATION</label></center>
			</div>
		</div>
		<div class = "panel panel-default">
			<div class = "panel-heading">
				<label>DISLOCATION FORM</label>	<a style = "float:right; margin-top:-4px;" href = "dislocation_pending.php?itr_no=<?php echo $_GET['itr_no']?>" class = "btn-sm btn-info"><span class = "glyphicon glyphicon-hand-right"></span> BACK</a>
			</div>
			<form method = "POST" enctype = "multipart/form-data">
			<?php
				$conn = new mysqli("sql312.byethost.com","b13_24703675","wbpn427z","b13_24703675_hcpms") or die(mysqli_error());
				$q = $conn->query("SELECT * FROM `itr` WHERE `itr_no` = '$_GET[itr_no]'") or die(mysqli_error());
				$q1 = $conn->query("SELECT * FROM `complaints` WHERE `com_id` = '$_GET[comp_id]' && `itr_no` = '$_GET[itr_no]' && `section` = 'Dislocation'") or die(mysqli_error());
				$f1 = $q1->fetch_array();
				$f = $q->fetch_array();
			?>	
			<div class = "panel-body">
				<div class = "alert alert-success">Basic Information</div>
					<table class="table">
   	                           <thead>
   		                           <th>Name</th>
   		                           <th>Age</th>
   		                           <th>Gender</th>
   		                           <th>Birthdate</th>
   		                           <th>Address</th>
   		                           <th>BP</th>
   		                           <th>TEMP</th>
   		                           <th>PULSE</th>
   		                           <th>RR</th>
   	                           </thead>
   	                           <tbody>
   	                           <tr>
   		                           <td data-label="Name"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['firstname']." ".$f['middlename']." ".$f['lastname']?></label></td>
   		                           <td data-label="Age"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['age']?></label></td>
   		                           <td data-label="Gender"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['gender']?></label></td>
   		                           <td data-label="Birthdate"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['birthdate']?></label></td>
   		                           <td data-label="Address"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['address']?></label></td>
   		                           <td data-label="BP"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['bp']?></label></td>
                                   <td data-label="TEMP"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['temp']?></label></td>
                                   <td data-label="PULSE"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['pr']?></label></td>
                                    <td data-label="RR"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['rr']?></label></td>
                                   
   	                           </tr>
   	
   	                           </tbody>
   
                              </table>
				<br style = "clear:both;"/>
				<hr style = "border:1px dotted #d3d3d3;" />
				
				<div class = "form-inline">
					<label>Diagnosis:</label>
					<input type = "text" name = "diagnosis" class = "form-control" required="required" />
					<label style = "margin-left:10px;">Type of Disability:</label>
					<input type = "text" name = "type_of_disability" class = "form-control" required="required" />
				</div>
				
				<div class = "form-inline">
					<center><h3 style = "color:#3C763D;"><u>PT NOTES</u></h3></center>
				</div>
				<br />
				
				<div class = "form-group">
					<h4 style = "color:#3C763D;"><b>Initial Evaluation</b></h4>
				</div>
				<br />
				
				<div class = "form-group">
					<label>Assessment:</label>
					<textarea name = "assessment" class = "form-control" style = "resize:none;" required="required" ></textarea>
				</div>
				<br />
				
				<div class = "form-group">
					<label>Plan:</label>
					<textarea name = "plan" class = "form-control" style = "resize:none;" required="required" ></textarea>
					<input type = "hidden" name = "itr_no" value = "<?php echo $f['itr_no']?>" required="required" />
					<input type = "hidden" name = "user_id" value = "<?php echo $_SESSION['user_id']?>" required="required" />
				</div>
                <br/>
                <div class = "form-group">
					<label>Medical Doctor</label>
					<textarea name = "medical_doctor" class = "form-control" style = "resize:none;" required="required" ></textarea>
				</div>
				<br />
				<br />
				
				<div class = "form-inline">
					<button class = "btn btn-success" name = "save_d" ><span class = "glyphicon glyphicon-save"></span> SAVE</button>
				</div>

			</div>

			</form>
            
		</div>	 
	</div>

	<div id = "footer">
		<label class = "footer-title">&copy; Copyright MOSC Patient Record System 2020</label>
	</div>

</body>
	<?php require "script.php" ?>
    <!-- Loading Scripts -->
  <script src="../js/js1/jquery.min.js"></script>
  <script src="../js/js1/bootstrap-select.min.js"></script>
  <script src="../js/js1/bootstrap.min.js"></script>
  <script src="../js/js1/jquery.dataTables.min.js"></script>
  <script src="../js/js1/dataTables.bootstrap.min.js"></script>
  <script src="../js/js1/Chart.min.js"></script>
  <script src="../js/js1/fileinput.js"></script>
  <script src="../js/js1/chartData.js"></script>
  <script src="../js/js1/main.js"></script>
  <script type="text/javascript">
         $(document).ready(function () {          
          setTimeout(function() {
            $('.succWrap').slideUp("slow");
          }, 3000);
          });
  </script>
</html>