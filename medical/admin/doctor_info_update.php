<?php
include('../config/connection.php'); 
$id = $_GET['id'];
$result = mysqli_query($con, "SELECT * FROM doctor_info WHERE doctor_id='$id'");
while($res = mysqli_fetch_array($result))
{
	$id = $res['doctor_id'];
	$name1 = $res['name'];
	$degree = $res['degree'];
    $tell_number = $res['tell_number'];
    $hospital_name = $res['hospital_name'];
    $doctor_location= $res['doctor_location'];
    $address = $res['address'];
    $lati = $res['lati'];
    $longi = $res['longi'];
	
}
if(isset($_POST['update'])){
    $update_doctor_id = $_POST['doctor_id'];
	$update_name = $_POST['name'];
	$update_degree = $_POST['degree'];
    $update_tell_number = $_POST['tell_number'];
    $update_hospital_name = $_POST['hospital_name'];
    $update_doctor_location = $_POST['doctor_location'];
    $update_address = $_POST['address'];
    $lati = $_POST['lati'];
    $longi = $_POST['longi'];
        
$result = mysqli_query($con, "UPDATE doctor_info SET name='$update_name',degree='$update_degree',tell_number='$update_tell_number',hospital_name='$update_hospital_name',doctor_location=' $update_doctor_location',address='$update_address',lati='$lati',longi='$longi'  WHERE doctor_id=$update_doctor_id");
    if($result){
      header("Location: doctor_info.php");
    }
    else{echo "<script>alert('Have Erro')</script>";}

	
}
?>




<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Blank Page</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
    
    <!-- table-->
    
    <style>

            table{
/*                   width: 20%;*/
/*                border-collapse: collapse;*/
            }
            td{
/*
                border: 1px solid black;
                border-collapse: collapse;
                width: 10%;
                height: 10%;
*/
            }

     </style>
    
    </head>
    <body id="page-top">
     <?php include('navbar.php'); ?>
      <div id="wrapper">

      <?php include('sidebar.php'); ?>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="index.html">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Blank Page</li>
          </ol>

          <!-- Page Content -->

            <h1>Doctor information</h1>
          <hr>

           <div class="edit" style="margin-left:100px; margin-top:100px;">
            <h1>Doctor Information Update Page:</h1>
           <form action="" method="post">
            
            <div class="form-group">
             <label for="doctor_id">doctor_id :</label>
            <input class="form-control form-control-sm" type="text" name="doctor_id" value="<?php echo $id;?>">
            
            </div>
            
            <div class="form-group">
            <label for="name">Name :</label>
            <input class="form-control form-control-sm" type="text" name="name" value="<?php echo $name1;?>">
            </div>
            <div class="form-group">
            <label for="degree">degree :</label>
            <input class="form-control form-control-sm" type="text" name="degree" value="<?php echo $degree;?>">
            </div>
            
            <div class="form-group">
            <label for="tell_number">Phone :</label>
            <input class="form-control form-control-sm" type="text" name="tell_number" value="<?php echo  $tell_number;?>">
            </div>
            
            <div class="form-group">
            <label for="hospital_name">hospital_name :</label>
            <input class="form-control form-control-sm" type="text" name="hospital_name" value="<?php echo $hospital_name;?>">
            </div>
             
              <div class="form-group">
            <label for="doctor_location">doctor_location :</label>
            <input class="form-control form-control-sm" type="text" name="doctor_location" value="<?php echo  $doctor_location;?>">
            </div>
             
              <div class="form-group">
            <label for="address">address :</label>
            <input class="form-control form-control-sm" type="text" name="address" value="<?php echo  $address;?>">
            </div>
            
                 <div class="form-group">
            <label for="address">Latitude :</label>
            <input class="form-control form-control-sm" type="number" name="lati" value="<?php echo  $lati;?>"step="0.0001">
            </div>
            
             <div class="form-group">
            <label for="address">Longitude :</label>
            <input class="form-control form-control-sm" type="number" name="longi" value="<?php echo  $longi;?>" step="0.0001">
            </div>

             <input type="submit" class="btn btn-primary" name="update" value="Update"> <br><br>

        
                 
        </form>
        </div>    
                
           
           

                
<!--
            <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Website 2018</span>
            </div>
          </div>
        </footer>
-->
                   
           
       
         
        
          
         </div>  
          

       
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
       

      </div>
      <!-- /.content-wrapper -->

    </div>
     
     
     <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

     
     
     
     
     
     
    </body>
</html>