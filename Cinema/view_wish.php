<center><label><h1>Wishlist</h1></label><br>

<?php

 $conn=mysqli_connect("localhost","root","") or die ("Connection failed");
   $database=mysqli_select_db($conn,"cinema") or die ("Database selection failed");

$query = "select * from wishlist";
$result = mysqli_query($conn, $query);

echo "<table border='1'>
<tr>
<th>Movie</th>
<th>Director</th>
<th>Type</th>
</tr>";
while ($row = $result->fetch_assoc()) 
{
   echo "<tr>";
   echo "<td>".$row['Movie']."</td>";
   echo "<td>".$row['director']."</td>";
   echo "<td>".$row['typem']."</td>";   
   echo"</tr>";
}
echo "</table>";

?>
</center>