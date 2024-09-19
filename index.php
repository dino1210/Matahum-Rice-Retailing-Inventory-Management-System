<?php
ob_start();
require_once('includes/load.php');
if ($session->isUserLoggedIn(true)) {
  redirect('home.php', false);
}
?>
<?php include_once('layouts/login.php'); ?>
<?php include_once('layouts/footer.php'); ?>