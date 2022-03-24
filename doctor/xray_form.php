<?php
	require_once'logincheck.php';
	$conn = new mysqli("localhost","root","","hcpms") or die(mysqli_error());
	$query = $conn->query("SELECT * FROM `user` WHERE `user_id` = '$_SESSION[user_id]'") or die(mysqli_error());
	$fetch = $query->fetch_array();
?>
<!DOCTYPE html>
<html lang = "en">
	<head>	
		<title>MOSC Patient Record System</title>
		<meta charset = "UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "shortcut icon" href = "../images/mosc-logo.png" />
		<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/jquery.dataTables.css" />
         <!-- table responsive css -->
	    <link rel="stylesheet" type="text/css" href="../css/stylecont.css">
		<link rel = "stylesheet" type = "text/css" href = "../css/customize.css" />
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
	<?php include('includes/header1.php');?>
<br/><br/><br/><br/><br/><br/><br/><br/>
  <div class="ts-main-content">
	<div class = "well">
		<div class = "panel panel-warning">
			<div class = "panel-heading">
				<center><label>XRAY</label></center>
			</div>
		</div>
		<div class = "panel panel-default">
			<div class = "panel-heading">
				
				<label>XRAY RESULT FORM</label>	
				
				<a style = "float:right; margin-top:-4px;" href = "xray_record.php?itr_no=<?php echo $_GET['itr_no']?>&rad_id=<?php echo $_GET['rad_id']?>" class = "btn btn-success">
                <span class = "glyphicon glyphicon-hand-right"></span> BACK</a>

				<a style = "margin-right:5px; float:right; margin-top:-4px;" href = "xray_print.php?itr_no=<?php echo $_GET['itr_no']?>&rad_id=<?php echo $_GET['rad_id']?>" class = "btn btn-success">
                <span class = "glyphicon glyphicon-print"></span> PRINT</a>

                <a style = "margin-right:5px; float:right; margin-top:-4px;" href = "xray_print_medcert.php?itr_no=<?php echo $_GET['itr_no']?>&rad_id=<?php echo $_GET['rad_id']?>" class = "btn btn-success">
                <span class = "glyphicon glyphicon-print"></span> PRINT MED CERT</a>
			
			</div>
			
			<form method = "POST" enctype = "multipart/form-data" action = "add_query.php">
			<?php
				$conn = new mysqli("sql312.byethost.com","b13_24703675","wbpn427z","b13_24703675_hcpms") or die(mysqli_error());
				$q = $conn->query("SELECT * FROM `radiological` NATURAL JOIN `itr` WHERE `itr_no` = '$_GET[itr_no]' &&`rad_id` = '$_GET[rad_id]'") or die(mysqli_error());
				$f = $q->fetch_array();
			?>
			<div class = "panel-body">
				<br style = "clear:both;"/>
				<div class = "alert alert-success">Basic Information</div>		
				 <table class="table">
   	            <thead>
   		            <th>Name of Patient:</th>
   		            <th>Age</th>
   		            <th>Civil Status</th>
   		            <th>Address</th>
   		            
   	            </thead>
   	            <tbody>
   	            <tr>
   		            <td data-label="Name of Patient:"><label style = "font-size:15px;" class = "text-muted"><?php echo $f['firstname']." ".$f['middlename']." ".$f['lastname']?></label>		</td>
   		            <td data-label="Age"><label style = "font-size:15px;" class = "text-muted"><?php echo $f['age']?></label>	</td>
   		            <td data-label="Civil Status"><label style = "font-size:15px;" class = "text-muted"><?php echo $f['civil_status']?></label>		</td>
   		            <td data-label="Address"><label style = "font-size:15px;" class = "text-muted"><?php echo $f['address']?></label>		</td>
   		           
   	            </tr>
                 <tr>
                 	<tr>
                         <thead>
                 		<th colspan="6px;" style="background-color: #4CAF50;">Case No:</th>
                 		</thead>
                      <tr>
                 </tr>
                 <tr>
                 	 <td data-label="Case No:"><label class = "text-muted"><?php echo $f['case_no']?></label></td>
                 </tr>
                 <tr>
                 	<tr>
                        <thead>
                 		<th>Reffered By: ICHC</th>
                 		<th>Room & Bed No:</th>
                 		<th>Clinical Impression</th>
                 		<th>Type of Examination</th>
                        </thead> 
                 	</tr>
                      <tr>
                 </tr>
                 <tr>
                 	 <td data-label="Reffered By: ICHC"><label class = "text-muted"><?php echo $f['referred_by']?></label></td>
                 	 <td data-label="Room & Bed No:"><label class = "text-muted"><?php echo $f['room_bed_no']?></label></td>
                 	 <td data-label="Clinical Impression"><label class = "text-muted"><?php echo $f['clinical_impression']?></label></td>
                 	 <td data-label="Type of Examination"><label class = "text-muted"><?php echo $f['type_of_examination']?></label></td>
                 </tr>


   	
   	            </tbody>
   
               </table>
				<br />
			    <br />
			</div>
			</form>
		</div>
	  </div>
	</div>
	<div id = "footer">
		<label class = "footer-title">&copy; Copyright MOSC Patient Record System 2020</label>
	</div>
	</body>
		<?php require "script.php" ?>
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