<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url('movie.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}

h1 {
  color: yellow;
  font-family: verdana;
  font-size: 300%;
}
p {
  color: black;
  font-family: courier;
  font-size: 160%;
}

<h1 style="background-color:rgb(255, 99, 71);">...</h1>
</style>
</head>
<body>

   <center> <h1 style="background-color:black;" >Cinema</h1> </center>



<?php 
if (isset($_POST['uname'])){  
 $ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
 $database=mysql_select_db("cinema") or die ("Database selection failed");
 $uname1=$_POST['uname'];
 $pass1=$_POST['pass'];
 $q="Select * from Users where nume_utilizator='$uname1' and parola='$pass1'";
 $Result=mysql_query($q) or die ("Query error");
 $n=0;
 $n=mysql_num_rows($Result);
 if($n>0) {
	 session_start();
	 $_SESSION['uname']=$uname1;
	 $crt_path = "Location: home1.php";
	 header($crt_path); 
 }
  else echo "<p>&nbsp </p><p><font color='red'>Login incorrect</font></p>";
}
?>
<center>
<p>&nbsp </p>
<form method=POST action="index.php">
User name: <input type="text" name="uname"></input><br>
Password: <input type="password" name="pass"></input><br>
<br><input type="submit" name="OK" value="OK"></input>
</form>
<center>
</body>
</html>