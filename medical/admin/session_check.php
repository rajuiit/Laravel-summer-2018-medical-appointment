<?php   
session_start();  
 echo "<script> if(sessionStorage.getItem('email').length == 0){window.location.href = 'login.php'}</script>"; 
?>