<HTML>
<HEAD>
<TITLE>My Cinema</TITLE>
</HEAD>
<?php
session_start(); 
if(isset($_SESSION['uname'])){ ?>
<FRAMESET COLS="20%, 60%, 20%">
     <FRAME NAME="left_frame"   SRC="frameA_admin.php">
     <FRAME NAME="middle_frame" SRC="frameB.php">
     <FRAME NAME="right_frame"  SRC="frameC.php">
</FRAMESET>
<?php } 
else echo("<p>Unauthorized user</p>");?>
</HTML>