<?php
include('../config/connection.php'); 
$id = $_GET['id'];
$result=mysqli_query($con,"select symptom_doctor.id,symptom.symptom_type,symptom.symptom_id,doctor_info.name from symptom_doctor INNER JOIN symptom ON symptom.symptom_id = symptom_doctor.symptom_id INNER JOIN doctor_info ON symptom_doctor.doctor_id = doctor_info.doctor_id where id='$id'");
              
$result2 = mysqli_query($con, "select symptom_id,symptom_type from  symptom group by symptom_type");
while($res = mysqli_fetch_array($result))
{
	$doctor_name = $res['name'];
	$symtom_type = $res['symptom_type'];
	$symptom_id = $res['symptom_id'];
	
}
if(isset($_POST['update'])){
    $doctor_name = $_POST['doctor_name'];
	$symptom_id = $_POST['symptom_id'];
        
$result = mysqli_query($con, "UPDATE symptom_doctor SET symptom_id='$symptom_id' WHERE id='$id'");
    if($result){
      header("Location: symptom_doctor.php");
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

            <h1>Symtom information</h1>
          <hr>

           <div class="edit" style="margin-left:100px; margin-top:100px;">
            <h1>Symtom Doctor Update Page:</h1>
           <form action="" method="post">
            
            <div class="form-group">
             <label for="doctor_id">Doctor name :</label>
            <input class="form-control form-control-sm" type="text" name="doctor_name" disabled value="<?php echo $doctor_name;?>">
            
            </div>
            
            <div class="form-group">
            <label for="name">Symtom Type :</label>
            <select class="form-control form-control-sm"  name="symptom_id" >
                 <option value="<?php echo $symptom_id; ?>"><?php echo $symtom_type; ?></option>
                <?php
                while($res = mysqli_fetch_array($result2))
                   {?>
                   <option value="<?php echo $res['symptom_id']; ?>"><?php echo $res['symptom_type']; ?></option>
                   <?php }
                ?>
            </select>
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