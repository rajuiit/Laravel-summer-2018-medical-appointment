<?php
   include('../config/connection.php'); 
 $id = $_GET['id'];
  $result=mysqli_query($con,"delete from symptom_doctor where id ='$id'");
    if($result){
      header("Location: symptom_doctor.php");
    }
    else{echo "<script>alert('Have Erro')</script>";}
?>
