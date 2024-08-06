<?php
if(isset($_POST['register']))
{
$con=mysqli_connect('localhost','root','','registration');
if($con)
{
echo "connected";
}
$name=$_POST['name'];
$age=$_POST['age'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$pass=$_POST['pass'];
$q="insert into register values('$name','$age','$email','$phone','$pass')";
$cq=mysqli_query($con,$q);
if($cq)
{
Header("location:login.php");
}
}
?>