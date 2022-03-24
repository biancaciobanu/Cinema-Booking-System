<html>
<head>
<title>HTML-PHP parameter transmission
</title>
</head>
<body>

<?php
$idwishlist=$_POST["idwishlist"];
$Movie=$_POST["Movie"];
$director=$_POST["director"];
$typem=$_POST["typem"];
echo("Id movie:".$idwishlist."<br>");
echo("Name of the movie:".$Movie."<br>");
echo("Director:".$director."<br>");
echo("Type:".$typem."<br>");


$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("cinema") or die ("Database selection failed");
$q1="Insert into wishlist(idwishlist, Movie, director, typem) values('$idwishlist','$Movie', '$director', '$typem')";
mysql_query($q1) or die ("Insert error");
echo("Insert successful!");
?>
</body>
</html>

