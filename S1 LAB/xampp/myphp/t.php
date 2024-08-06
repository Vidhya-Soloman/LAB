<html>
<head>
<title>sample</title>
</head>
<body>
<form method="POST" action="ts.php">
<b><marquee behavior="scroll" direction="right" onmouseover="this.stop()" onmouseout="this.start()">WELCOME</marquee></b>
<table border="1" bgcolor="orange" align="center">
<tr><th>Name</th>
<td><input type="textbox" name="name"></input></td></tr>
<tr><th>Age</th>
<td><select name="age"><option>select</option>
<?php
for($i=18;$i<=50;$i++)
{
echo "<option>".$i."</option>";
}
?>
</td></tr>
<tr>
<th>Course</th>
<td>MCA<input type="checkbox" name="mca"></input>
BCA<input type="checkbox" name="bca"></input></td></tr>
<tr><th>Indian?</th>
<td>YES<input type="radio" name="choice" value="YES"s></input>
NO<input type="radio" name="choice" value="NO"></input></td></tr>
<tr>
<td colspan="2" align="center">
<input type="submit" name="submit" value="submit"></input>
<input type="reset" name="reset" value="reset"></input>
</td></tr>
</table>
</form>
</body>
</html>