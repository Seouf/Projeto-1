
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<body>
  <h1>Login</h1>

  <form method="POST" action="">
    <label for="username">Username:</label>
    <input type="text" name="username" required><br>
    <label for="password">Password:</label>
    <input type="password" name="password" required><br>
    <input type="submit" value="Log in">
  </form>
  <?php
          include_once("../Classes/Database.php");
          include_once("../Classes/Login.php");

          if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $username = $_POST['username'];
            $password = $_POST['password'];
            $user = New User($username);
          
            $DbUser = User::DbByUsername($username);
          
            if (password_verify($password, $DbUser['user_password_digest'])){
            $user->login();
            header('Location: main.php');
            exit();
            } else {
            echo 'Invalid username or password';
            }
          }
    ?>
</body>
</html>

    
