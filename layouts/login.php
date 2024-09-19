<?php
ob_start();
require_once('includes/load.php');
if ($session->isUserLoggedIn(true)) {
    redirect('home.php', false);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>
    </title>
</head>

<body class="login-body">
    <link rel="stylesheet" href="libs/css/main.css" />
    <div class="login-container">
        <div class="matahum-container">
            <img class="matahum-login" src="libs/images/matahum-logo.png">
        </div>
        <div class="login-box">
            <div class="login-page">
                <div class="text-center">
                    <h1>Login</h1>
                </div>
                <?php echo display_msg($msg); ?>
                <form method="post" action="auth.php" class="clearfix">
                    <div class="form-group">
                        <label for="username" class="control-label">Username:</label>
                        <input type="name" class="form-control" name="username" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="Password" class="control-label">Password:</label>
                        <input type="password" name="password" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="login-button">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
<?php include_once('layouts/footer.php'); ?>