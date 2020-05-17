<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    
    <title>Admin-Smart E-Health System</title>
    <link rel="icon" type="image/jpg" href="khab.png" </head>
      
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  
 


  
    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

   

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
              <a href="index.php">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Doctor Information</li>
          </ol>
         
           <h1 style="margin-left:400px;margin-top:20px; color:#2C292A; text-shadow: 0px 2px 6px;"> Doctor Information</h1>
           
         <a href="insert_doctor_info.php" class="btn btn-primary btn-lg " role="button">Create</a> <p></p>
        <table  class="table table-sm table-striped table-hover table-bordered" id="myTable2">
            <tr>
                <th>Doctor ID</th>
                <th>Name</th>
<!--                <td>image</td>-->
                <th>Degree</th>
<!--                <th>experience</th>-->
                <th>Phone</th>
                <th>Hospital </th>
                <th>Address</td>
                <th style="width:13%">Action</td>
                
                
            </tr>
            
                <?php 
                 include('../config/connection.php'); 
                $result=mysqli_query($con,"select * from doctor_info ORDER BY doctor_id DESC");
                while($row=mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo "<td>";
                    echo $row['doctor_id'];
                    echo "</td>";
                    echo "<td>";
                    echo $row['name'];
                    echo "</td>";
                    echo "<td>";
                    echo $row['degree'];
                    echo "</td>";

                    echo "<td>";
                    echo $row['tell_number'];
                    echo "</td>";
                    echo "<td>";
                    echo $row['hospital_name'];
                    echo "</td>";
                    echo "<td>";
                    echo $row['address'];
                    echo "</td>";
                    echo '<td><a href="doctor_info_update.php?id='.$row['doctor_id'].'" class="btn btn-success" style=" width: 60px;font-size: 11px;text-align: center;">Update </a> 
                    <a href="delete_doctor_info.php?id='.$row['doctor_id'].'" class="btn btn-danger " style=" width: 60px;font-size: 11px;text-align: center;">Delete</a></td>';
                    echo "</tr>";
                }
                ?>
           
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
            <a class="btn btn-primary" href="login.php">Logout</a>
          </div>
        </div>
      </div>
    </div>

   

  </body>


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
</html>
