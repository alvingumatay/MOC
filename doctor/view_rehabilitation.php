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
        <link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/jquery.dataTables.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/customize.css" />
		<link  rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.css">
        <!-- Bootstrap Datatables -->
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
<br/><br/><br/><br/><br/><br/><br/><br/>
  <div class="ts-main-content">
		<div class = "panel panel-warning">
			<div class = "panel-heading">
				<center><label>CONSULTATION</label></center>
			</div>
		</div>
		<div class = "panel panel-success">	
			<div class = "panel-heading">
			<?php
				$q = $conn->query("SELECT * FROM `itr` WHERE `itr_no` = '$_GET[itr_no]'") or die(mysqli_error());
				$f = $q->fetch_array();
				$q1 = $conn->query("SELECT COUNT(*) as total FROM `complaints` where `status` = 'Pending' && `itr_no` = '$f[itr_no]' && `section` = 'Rehabilitation'") or die(mysqli_error());
				$f1 = $q1->fetch_array();
			?>
				<label>Patient Information / <label class = "text-warning"><?php echo $f['firstname']." ".substr($f['middlename'], 0,1).". ".$f['lastname']?></label></label>
				
				<a style = "float:right; margin-top:-4px;" href = "rehabilitation.php" class = "btn-xs btn-info"><span class = "glyphicon glyphicon-hand-right"></span> BACK</a>
				
				<a style = "float:right; margin-top:-4px; margin-right:5px;" href = "rehabilitation_pending.php?itr_no=<?php echo $f['itr_no']?>" class = "btn-xs btn-info">REQUEST <span class = "badge"> <?php echo $f1['total']?></span></a>
				<label style = "margin-top:5px; margin-right:5px; float:right;">Patient No: <label class = "text-warning"><?php echo $f['itr_no']?></label></label>
			
			</div>
			
			<div class = "panel-body">
					<table class="table">
   	            <thead>
   		            <th>Birthdate</th>
   		            <th>Age</th>
   		            <th>Gender</th>
   		            <th>Civil Status</th>
   		            <th>Philhealth No.</th>
   		            <th>Address</th>
   	            </thead>
   	            <tbody>
   	            <tr>
   		            <td data-label="Birthdate"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['birthdate']?></label></td>
   		            <td data-label="Age"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['age']?></label></td>
   		            <td data-label="Gender"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['gender']?></label></td>
   		            <td data-label="Civil Status"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['civil_status']?></label></td>
   		            <td data-label="Philhealth No."><label style = "font-size:18px;" class = "text-muted"><?php echo $f['phil_health_no']?></label></td>
   		            <td data-label="Address"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['address']?></label></td>
   	            </tr>
   	            <tr>
   	            	<thead>
   	            		<th>BP</th>
   	            		<th>TEMP</th>
   	            		<th>PR</th>
   	            		<th>RR</th>
   	            		<th>WT</th>
   	            		<th>HT</th>
   	            	</thead>
   	            </tr>
   	            <tr>
   	            	<td data-label="BP"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['bp']?></label></td>
   	            	<td data-label="TEMP"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['temp']?></label></td>
   	            	<td data-label="PR"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['pr']?></label></td>
   	            	<td data-label="RR"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['rr']?></td>
   	            	<td data-label="WT"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['wt']?></td>
   	            	<td data-label="HT"><label style = "font-size:18px;" class = "text-muted"><?php echo $f['ht']?></td>
   	            </tr>
   	            </tbody>
   
               </table>
					<br />
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