<?php
session_start();
include('databaseConnection.php');

$userName=$_POST['txtUserName'];
$pass=$_POST['txtPassword'];

$query=mysqli_query($con,"select * from tblstudentregistration where UserName='$userName' && Password='$pass'");

$ret=mysqli_fetch_array($query);
$_SESSION["ID"] = $ret[0];
if ($ret>0) {	
	$output .='<script>alert("Login Successfull!")</script>';
    $output .='<script>location="student/dashboard.php"</script>';
  }
  else
    {
     $output .='<script>alert("Please Enter The Correct UserName and Password")</script>';
     $output .='<script>location="student.html"</script>';
    }
echo $output;	

?>