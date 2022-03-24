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
  </head>
<body>
<?php include('includes/header.php');?>
<br /><br /><br /><br /><br /><br /><br /><br />
  <div class="ts-main-content">	
		<br />
		<br />
		<br />
        
		<?php
			$conn = new mysqli("localhost","root","","hcpms") or die(mysqli_error());
			$q1 = $conn->query("SELECT * FROM `itr` WHERE `itr_no` = '$_SESSION[itr_no]'") or die(mysqli_error());
			$f1 = $q1->fetch_array();
		?>
		<div class = "alert alert-success">Urinalysis Record / <?php echo $f1['firstname']." ".substr($f1['middlename'], 0, 1).". ".$f1['lastname']?><a class = "btn btn-success" style = "float:right; margin-top:-7px;" href = "home.php"><span class = "glyphicon glyphicon-hand-right"></span> Back</a></div>
		<table id = "table" cellspacing = "0" class = "display">
			<thead>
				<tr>
					<th>Date of Request</th>
					<th>Pathologist</th>
                    <th>Price</th>
					<th><center>Action</center></th>
				</tr>
			</thead>
			<tbody>
			<?php 
				$conn = new mysqli("localhost","root","","hcpms") or die(mysqli_error());
				$q = $conn->query("SELECT * FROM `urinalysis` WHERE `itr_no` = '$_GET[itr_no]' ORDER BY `date_of_request` DESC") or die(mysqli_error());
				while($f = $q->fetch_array()){
			?>
				<tr>
					<td><?php echo $f['date_of_request']?></td>
					<td><?php echo $f['pathologist']?></td>
                    <td><?php echo $f['price']?></td>
					<td><center><a class = "btn btn-success" href = "urinalysis_form.php?itr_no=<?php echo $f['itr_no']?>&urinalysis_id=<?php echo $f['urinalysis_id']?>"><span class = "glyphicon glyphicon-search"></span> View Detail</a><center></td>
				</tr>
			<?php
				}
			?>	
			</tbody>
		</table>
		</table>
	</div>
	<div id = "footer">
		<label class = "footer-title">&copy; Copyright MOSC Patient Record System 2020</label>
	</div>
	<?php require'script3.php'?>
	<script type = "text/javascript" src="../js/paging_info.js"></script>
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
</body> 
</html>