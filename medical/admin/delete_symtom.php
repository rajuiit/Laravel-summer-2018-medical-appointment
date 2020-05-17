<?php
   include('../config/connection.php'); 
 $id = $_GET['id'];
  $result=mysqli_query($con,"delete from symptom where symptom_id ='$id'");
    if($result){
      header("Location: symtomes.php");
    }
    else{echo "<script>alert('Have Erro')</script>";}
?>
