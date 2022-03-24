<?php
	ob_start();
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
		<link href="../font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet"> 
		<link rel = "stylesheet" type = "text/css" href = "../css/customize.css" />
		<style>img[alt="www.000webhost.com"]{display:none;}</style>
	</head>
<body>
	<div class = "navbar navbar-default navbar-fixed-top" style="background-color: #4CAF50;">
	 <img src = "../images/mosc-logo.png" style = "float:left;" height = "55px" />
		<label class = "navbar-brand" style="font-size: 26px;">Marikina Orthopedic 
		<span style="color: #ffce14;">Specialty Clinic</span>
		<p class="logo_w3l_agile_caption">Best Orthopedic Clinic</p>
		</label>
			<?php
				$conn = new mysqli("localhost","root","","hcpms") or die(mysqli_error());
				$q = $conn->query("SELECT * FROM `secretary` WHERE `sec_id` = '$_SESSION[sec_id]'") or die(mysqli_error());
				$f = $q->fetch_array();
			?>
			<ul class = "nav navbar-right">	
				<li class = "dropdown">
					<a class = "user dropdown-toggle" data-toggle = "dropdown" href = "#">
						<span class = "glyphicon glyphicon-user"></span>
						<?php
							echo $f['firstname']." ".$f['lastname'];
							$conn->close();
						?>
						<b class = "caret"></b>
					</a>
				<ul class = "dropdown-menu">
					<li>
						<a class = "me" href = "logout.php"><i class = "glyphicon glyphicon-log-out"></i> Logout</a>
					</li>
				</ul>
				</li>
			</ul>
	</div>
	<div id = "sidebar">
			<ul id = "menu" class = "nav menu">
				<li><a href = "home.php"><i class = "glyphicon glyphicon-home"></i> Dashboard</a></li>
				<li><a href = "patient.php"><i class = "glyphicon glyphicon-user"></i> Patient</a></li>
				 <li><a href = ""><i class = "glyphicon glyphicon-calendar"></i> Appointment</a>
                <ul>
               	<li><a href = "appointment.php"><i class = "glyphicon glyphicon-paperclip"></i> Pending Appointment</a></li>
			    <li><a href = "approve_appoint.php"><i class = "glyphicon glyphicon-paperclip"></i> Approve Appointment</a></li>
                <li><a href = "appoint.php"><i class = "glyphicon glyphicon-list"></i> Appointment History</a></li>
               </ul>
                </li>
				<li><a href = ""><i class = "glyphicon glyphicon-folder-close"></i> Sections</a>
					<ul>
					<li><a href = "rehabilitation.php"><i class = "glyphicon glyphicon-folder-open"></i> 
						    Consultation</a></li>

					<li><a href = "xray.php"><i class = "glyphicon glyphicon-folder-open"></i>
						    Xray</a></li>

						<li><a href = "fecalysis.php"><i class = "glyphicon glyphicon-folder-open"></i>  Fecalysis</a></li>

						<li><a href = "urinalysis.php"><i class = "glyphicon glyphicon-folder-open"></i>  Urinalysis</a></li>

						<li><a href = "hematology.php"><i class = "glyphicon glyphicon-folder-open"></i>  Hematology</a></li>

                         <li><a href = "minor_surgery.php"><i class = "glyphicon glyphicon-folder-open"></i>  Minor Surgery</a></li>
                         
                        <li><a href = "dislocation.php"><i class = "glyphicon glyphicon-folder-open"></i>  Dislocation</a></li>
			             </ul>
				       </li>
				
			      </ul>
	        </div>
	<div id = "content">
		<br />
		<br />
		<br />
		<?php
				$conn = new mysqli("localhost","root","","hcpms") or die(mysqli_error());
				$q = $conn->query("SELECT * FROM `minor_surgery` NATURAL JOIN `itr` WHERE `surgery_id` = '$_GET[surgery_id]' && `itr_no` = '$_GET[itr_no]'") or die(mysqli_error());
				$f = $q->fetch_array();
			?>
			<br />
		<div class = "alert alert-success">Basic Information <a class = "btn btn-success" style = "float:right; margin-top:-7px;" href = "minor_surgery_record.php?itr_no=<?php echo $f['itr_no']?>">
			<span class = "glyphicon glyphicon-hand-right"></span> Back</a>
		</div>
		<br />
		<br />
					<div style = "width:30%; float:left;">
						<label style = "font-size:18px;">Name</label>
						<br />
						<label style = "font-size:18px;" class = "text-muted"><?php echo $f['firstname']." ".$f['middlename']." ".$f['lastname']?></label>
					</div>
					<div style = "width:10%; float:left;">
						<label style = "font-size:18px;">Age</label>
						<br />
						<label style = "font-size:18px;" class = "text-muted"><?php echo $f['age']?></label>
					</div>
					<div style = "width:10%; float:left;">
						<label style = "font-size:18px;">Gender</label>
						<br />
						<label style = "font-size:18px;" class = "text-muted"><?php echo $f['gender']?></label>
					</div>
					<div style = "width:15%; float:left;">
						<label style = "font-size:18px;">Birthdate</label>
						<br />
						<label style = "font-size:18px;" class = "text-muted"><?php echo $f['birthdate']?></label>
					</div>
					<div style = "float:left; width:35%;">
						<label style = "font-size:18px;">Address</label>
						<br />
						<label style = "font-size:18px;" class = "text-muted"><?php echo $f['address']?></label>				
					</div>
					<br />
					<br />
					<br />
					<br style = "clear:both;"/>
				<div style = "width:20%; float:left;">
					<label style = "font-size:18px;">BP</label>
					<br />
					<label style = "font-size:18px;" class = "text-muted"><?php echo $f['BP']?></label>
				</div>
				<div style = "width:20%; float:left;">
					<label style = "font-size:18px;">Temp:</label>
					<br />
					<label style = "font-size:18px;" class = "text-muted"><?php echo $f['TEMP']?></label>
				</div>
				<div style = "width:20%; float:left;">
					<label style = "font-size:18px;">Pulse</label>
					<br />
					<label style = "font-size:18px;" class = "text-muted"><?php echo $f['PR']?></label>
				</div>
				<div style = "width:20%; float:left;">
					<label style = "font-size:18px;">RR</label>
					<br />
					<label style = "font-size:18px;" class = "text-muted"><?php echo $f['RR']?></label>
				</div>
				<br style = "clear:both;"/>
				<hr style = "border:1px dotted #d3d3d3;" />
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
					<div style = "word-wrap:break-word;"><?php echo $f['assessment']?></div>
				</div>
				<br />
				<div class = "form-group">
					<label>Plan:</label>
					<div style = "word-wrap:break-word;"><?php echo $f['plan']?></div>
				</div>
				<br />
				<br />
	</div>
	<div id = "footer">
		<label class = "footer-title">&copy; Copyright MOSC Patient Record System 2020</label>
	</div>

	<script type = "text/javascript" src="../js/confirmdelete.js"></script>
<?php include("script.php"); ?>
<script type = "text/javascript" src="../js/forward.js"></script>
</body>
</html>