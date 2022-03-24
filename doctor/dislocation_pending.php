<?php
	require_once'logincheck.php';				
	$conn = new mysqli("sql312.byethost.com","b13_24703675","wbpn427z","b13_24703675_hcpms") or die(mysqli_error());
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
    <br/> <br/> <br/> <br/> <br/> <br/> <br/>
  <div class="ts-main-content">
		<div class = "panel panel-warning">
			<div class = "panel-heading">
				<center><label>DISLOCATION</label></center>
			</div>
		</div>	
		<div class = "panel panel-success">
			<div class = "panel-heading">
				<label>DISLOCATION REQUEST FORM</label>
				<a style = "float:right; margin-top:-4px;" href = "view_dislocation.php?itr_no=<?php echo $_GET['itr_no']?>" class = "btn btn-success"><span class = "glyphicon glyphicon-hand-right"></span> BACK</a>
			</div>
			<div class = "panel-body">
			<?php
				$id = $_GET['itr_no'];
				$q1 = $conn->query("SELECT * FROM `itr` WHERE `itr_no` = '$id'") or die(mysqli_error());
				$f1 = $q1->fetch_array();
				$q = $conn->query("SELECT * FROM `complaints` WHERE `section` = 'Dislocation' && `itr_no` = '$id' ORDER BY `status` DESC") or die(mysqli_error());
				while($f = $q->fetch_array()){
					if($f['status'] == 'Pending'){
						echo "<label style = 'color:#4CAF50;'>".$f1['firstname']." ".$f1['lastname']."</label>"."<textarea  style = 'resize:none;' disabled = 'disabled' class = 'form-control'>".$f['remark']."</textarea>".$f['date']."<br /><a class = 'btn btn-success' href = 'dislocation_not.php?itr_no=".$id."&comp_id=".$f['com_id']."'><span class = 'glyphicon glyphicon-check'></span> Confirm</a><br /><br />";
					}else{
						echo "<label style = 'color:tomato;'>".$f1['firstname']." ".$f1['lastname']."</label>"."<textarea  style = 'resize:none;' disabled = 'disabled' class = 'form-control'>".$f['remark']."</textarea>".$f['date']."<br /><a class = 'btn btn-success' disabled = 'disabled'><span class = 'glyphicon glyphicon-ok-sign'></span> Done</a><br /><br />";
					}
				}	
			?>
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