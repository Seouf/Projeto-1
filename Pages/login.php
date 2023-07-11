<!DOCTYPE html>
 <?php
  session_start();
    session_unset();
    session_destroy();
    session_start();
          include_once("../Classes/Database.php");
          include_once("../Classes/Login.php");

          if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $username = $_POST['username'];
            $password = $_POST['password'];
          
            $DbUser = User::DbByUsername($username);
          
            if (password_verify($password, $DbUser['user_password_digest'])){
            $user = New User($username);
            $user->login();
            header('Location: main.php');
            exit();
            } else {
            echo 'Invalid username or password';
            }
          }
    ?>
    
<html>
<head>
  <title>Login</title>
</head>
<body>
  <h1>Login</h1>

  <form method="POST" action="">
    <label for="loginuserinput">Username:</label>
    <input type="text" id="loginuserinput" name="username" autocomplete="username" required><br> 
    <label for="passworduserinput">Password:</label>
    <input type="password" id="passworduserinput" name="password" autocomplete="current-password" required><br>
    <input type="submit" value="Log in">
  </form>
 <?php  
 // referência autocomplete: https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete#values 
 // referência doctype HTML: https://developer.mozilla.org/en-US/docs/Web/HTML/Quirks_Mode_and_Standards_Mode
 // referência request method: https://cursos.alura.com.br/forum/topico-uso-do-_server-request_method-251356

 ?>
</body>
</html>

    
