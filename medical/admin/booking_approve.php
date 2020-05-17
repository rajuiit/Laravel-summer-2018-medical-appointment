<?php
   include('../config/connection.php'); 
 $id = $_GET['id'];
  $result=mysqli_query($con,"UPDATE booking set status='Approve' where id ='$id'");
    if($result){
      header("Location: booking.php");
    }
    else{echo "<script>alert('Have Erro')</script>";}
?>
