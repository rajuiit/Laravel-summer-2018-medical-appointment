<?php   
session_start();  
unset($_SESSION['email']);  
session_destroy(); 
   echo "<script type='text/javascript'>sessionStorage.setItem('email', '');window.location.href = '../index.php';</script>"; 
?>