<?php
session_start();
include('../config/connection.php'); 
$error='';
   if(isset($_POST['submit_login_info'])){
       $email=$_POST['email'];
       $psw=$_POST['psw'];
       if(!empty($email) && !empty($psw)){
           
           $result=mysqli_query($con,"select * from doctor_info where email ='$email' and password ='$psw'");
           $rows = mysqli_num_rows($result); 
           if($rows == 1){ 
               $_SESSION["email"] = $email;
            echo "<script type='text/javascript'>sessionStorage.setItem('email', '$email');window.location.href = 'index.php';</script>";
           }
           else{ $error="Error !!!";}
       }
        else{ $error="empty !!!";}
   
   }
  ?>
  <!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Login</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
          <form action="" method="post"> <p><?php echo $error; ?></p>
            <div class="form-group">
<!--              <div class="form-label-group">-->
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus" name="email">
<!--                <label for="inputEmail">Email address</label>-->
<!--              </div>-->
            </div>
            <div class="form-group">
<!--              <div class="form-label-group">-->
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required" name="psw">
<!--                <label for="inputPassword">Password</label>-->
<!--              </div>-->
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>
            <button type="submit" class="btn btn-primary btn-block"  name="submit_login_info">Login</button>
          </form>
          <div class="text-center">
            <a class="d-block small" href="forgot-password.php">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>

  </body>

</html>
