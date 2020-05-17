<?php
   include('../config/connection.php'); 
 $id = $_GET['id'];
  $result=mysqli_query($con,"delete from doctor_info where doctor_id ='$id'");
    if($result){
      header("Location: doctor_info.php");
    }
    else{echo "<script>alert('Have Erro')</script>";}
?>
