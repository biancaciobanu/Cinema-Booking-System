<center><label><h1>Film Recommendations</h1></label><br>
<?php

 $conn=mysqli_connect("localhost","root","") or die ("Connection failed");
   $database=mysqli_select_db($conn,"cinema") or die ("Database selection failed");

$query = "select * from recommendation";
$result = mysqli_query($conn, $query);

echo "<table border='1'>
<tr>
<th>Nr</th>
<th>Movie</th>
<th>Director</th>
<th>Type</th>
<th>Rating</th>
<th>Year</th>
</tr>";
while ($row = $result->fetch_assoc()) 
{
   echo "<tr>";
   echo "<td>".$row['idrecommendation']."</td>";
   echo "<td>".$row['movie']."</td>";
   echo "<td>".$row['director']."</td>";
   echo "<td>".$row['type']."</td>";   
   echo "<td>".$row['rating']."</td>"; 
   echo "<td>".$row['year']."</td>"; 
   echo"</tr>";
}
echo "</table>";

?>
</center>