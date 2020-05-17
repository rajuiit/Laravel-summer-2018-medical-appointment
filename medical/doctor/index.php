<?php
session_start();
       
       $email = $_SESSION["email"] ;     
         include('../config/connection.php');
         $query = "select * from doctor_info where email= '$email'";
        $result=mysqli_query($con,$query);
        
       $data= mysqli_fetch_assoc($result)

   
    ?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Dashboard</title>

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

      <!-- Sidebar -->
      <?php include('sidebar.php'); ?>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">An Smart E-Health System</li>
          </ol>
          
          
          <table class="table">
              <tr>
                  <th>Name</th>
                  <td><?php echo $data['name']; ?></td>
              </tr>
              
              <tr>
                  <th>Email</th>
                  <td><?php echo $data['email']; ?></td>
              </tr>
              <tr>
                  <th>Degree</th>
                  <td><?php echo $data['degree']; ?></td>
              </tr>
              <tr>
                  <th>Phone Number</th>
                  <td><?php echo $data['tell_number']; ?></td>
              </tr>
              <tr>
                  <th>Address</th>
                  <td><?php echo $data['address']; ?></td>
              </tr>
              <tr>
                  <th>Summary</th>
                  <td><?php echo $data['doctor_summery']; ?></td>
              </tr>
              <tr>
                  <th>Image</th>
                  <td><img src="../doctor_image/<?php echo $data['image']; ?>" alt="doctor image" width="50px" height="50px" /></td>
              </tr>
          </table>


        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Your Website 2019</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

 

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>

  </body>

</html>
