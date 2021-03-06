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
              <a href="index.php">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Symptomes</li>
          </ol>

          <!-- Page Content -->
          <h1 style="color:#2C292A; text-shadow: 0px 2px 6px;">Symptoms Page :</h1>
          <hr>
<!--          <p>This is a great starting point for new custom pages.</p>-->
          
          
                   <a class="btn btn-success" href="new_symtom.php">Insert</a><p></p>
<!-- <h1 style="margin-left:200px;margin-top:20px;">This is Doctor Registration Page:</h1>-->
        <table class="table table-sm table-striped table-hover table-bordered">
            <tr>
                <th>Symptom_ID</th>
                 <th>Symptom_Name</th>
                <th>Symptom_Type</th>
                <th>Action</th>
                
                
            </tr>
            
                <?php 
                 include('../config/connection.php'); 
                $result=mysqli_query($con,"select * from symptom");
                while($row=mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo "<td>";
                    echo $row['symptom_id'];
                    echo "</td>";
                    echo "<td>";
                    echo $row['symptom_name'];
                    echo "</td>";
                    echo "<td>";
                    echo $row['symptom_type'];
                    echo "</td>"; 
                     echo '<td><a href="edit_symtom.php?id='.$row['symptom_id'].'" class="btn btn-success" style=" width: 60px;font-size: 11px;text-align: center;">Update </a> 
                    <a href="delete_symtom.php?id='.$row['symptom_id'].'" class="btn btn-danger " style=" width: 60px;font-size: 11px;text-align: center;">Delete</a></td>';
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
              <span>Copyright © Website 2018</span>
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
