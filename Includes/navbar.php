<?php 
include_once("../Classes/Cities.php");
include_once("../Classes/Login.php"); ?>
<div class='navbar'> 
    <nav>
         <div class='navcontent'>
            <a href="main.php" class='navtxt'>Home</a>
        </div>
        <div class='userdiv'>
        <span class='navuser'> Bem-Vindo <?= $_SESSION['username'] ?> </span>
            <a href="logout.php" class='logout'>[Logout]</a>
        </div>        
    </nav>
</div>