<?php
$name=$_POST['name'];
$mca=$_POST['mca'];
$bca=$_POST['bca'];
$choice=$_POST['choice'];
$age=$_POST['age'];
?>
<html>
<head><title></title></head>
<body>
<table border=1>
<tr>
<th>name</th>
<td><?php
echo $name;
?></td>
</tr>
<tr><th>Age</th>
<td>
<?php
echo $age;
?>
</td></tr>
<tr>
<th>Choice</th>
<td>
<?php
if(isset($choice))
{
echo "YES";
}
?>
</td></tr>
<tr><th>Course</th>
<td>
<?php
if(isset($mca))
{
echo "MCA";
}
if(isset($bca))
{
echo"BCA";
}
?>
</td></tr>
</table>
</body>
</html>

