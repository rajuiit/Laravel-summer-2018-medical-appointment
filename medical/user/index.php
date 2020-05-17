<?php
session_start();
       
       $email = $_SESSION["email"] ;   
         include('../config/connection.php');
         $query = "select * from user_info where email= '$email'";
        $result=mysqli_query($con,$query);
        
       $data= mysqli_fetch_assoc($result);
       
        $query2 = "select doctor_info.name,doctor_info.tell_number,doctor_info.degree,doctor_info.experience,doctor_info.hospital_name,doctor_info.address,booking.date,booking.time,booking.status,booking.submit_date,booking.submit_time from booking join doctor_info on doctor_info.doctor_id = booking.doctor_id where booking.email= '$email' ";
        $result2=mysqli_query($con,$query2);

   
    ?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>User - Dashboard</title>

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
                  <th>Phone Number</th>
                  <td><?php echo $data['tell_number']; ?></td>
              </tr>
          </table>
          <br><br><br>
           <h4>User appointments</h4>
             <table class="table table-bordered">
              <tr>
                <th>Doctor Name</th>
                <th>Doctor Phone No</th>
                <th>Doctor Degree</th>
                <th>Experience</th>
                <th>hospital_name</th>
                <th>location</th>
                <th>Appointment datetime</th>
                <th>Status</th>
                <th>Submitted datetime</th>
            </tr>
            <?php 
             while($row=mysqli_fetch_array($result2)){ ?>
               <tr>
                <td> <?php echo $row['name']; ?> </td>
                <td> <?php echo $row['tell_number']; ?> </td>
                <td> <?php echo $row['degree']; ?> </td>
                <td> <?php echo $row['experience']; ?> </td>
                <td> <?php echo $row['hospital_name']; ?> </td>
                <td> <?php echo $row['address']; ?> </td>
                <td> <?php echo $row['date'].'-'.$row['time']; ?> </td>
                <td> <?php echo $row['status']; ?> </td>
                <td> <?php echo $row['submit_date'].'-'.$row['submit_time']; ?> </td>
            </tr>
            <?php } ?>
          </table>


        </div>
        <!-- /.container-fluid -->


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
