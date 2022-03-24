<html>
<head>
<title>HTML-PHP parameter transmission
</title>
</head>
<body>

<?php
$Movie=$_POST["Movie"];
$director=$_POST["director"];
$typem=$_POST["typem"];
echo("Name of the movie:".$Movie."<br>");
echo("Director:".$director."<br>");
echo("Type:".$typem."<br>");


$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("cinema") or die ("Database selection failed");
$q1="Update wishlist set Movie='$Movie' where director='$director' and typem='$typem'";
mysql_query($q1) or die ("Update error");
echo("Update successful!");
?>
</body>
</html>

