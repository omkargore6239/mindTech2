<?php
include('databaseConnection.php');

$userName=$_POST['txtUserName'];
$pass=$_POST['txtPassword'];

$query=mysqli_query($con,"select * from tbladmin where UserName='$userName' && Password='$pass'");

$ret=mysqli_fetch_array($query);

if ($ret>0) {	
	$output .='<script>alert("Login Successfull!")</script>';
    $output .='<script>location="admin/dashboard.php"</script>';
  }
  else
    {
     $output .='<script>alert("Please Enter The Correct UserName and Password")</script>';
     $output .='<script>location="admin.html"</script>';
    }
echo $output;	

?>