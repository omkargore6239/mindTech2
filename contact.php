<?php
include('databaseConnection.php');

$Name=$_POST['txtName'];
$MobileNo=$_POST['txtMobileNo'];
$email=$_POST['txtEmail'];
$subject=$_POST['txtSubject'];
$message=$_POST['txtMessage'];

$query=mysqli_query($con,"insert into tblcontactus values('$Name','$MobileNo','$email','$subject','$message')");

if ($query>0) {	
	$output .='<script>alert("Thank You..!")</script>';
    $output .='<script>location="index.html"</script>';
  }
  else
    {
     $output .='<script>alert("Somethings Wrong")</script>';
     $output .='<script>location="index.html"</script>';
    }
echo $output;	

?>