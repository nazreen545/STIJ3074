<?php
session_start();
$username = $_SESSION["email"];
$password = $_SESSION["password"];
?>

<!DOCTYPE html>
<html>

<head>
    <title>Main Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="../js/validate.js"></script>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
    <div class="header">
    <h1> MyShop Bouquet & Giftbox </h1>
		<p>Myshop 2021.</p>

    </div>
    <div class="topnavbar">
        <a href="#">Search</a>
        <a href="#">Feedback</a>
        <a href="#">Support</a>
        <a href="../html/login.html" class="right">Logout</a>
    </div>
    <center>
        <h2>Welcome <?php echo $username ?></h2>
        <h2>Thank You For Choosing our shop 😇</h2>
    </center>
    <div class="main">

        <div class="row">
        <center>
        <img src="../images/flower1.jpg">
		<img src="../images/flower4.jpg">
		<img src="../images/flower3.jpg">
		</center>
        </div>
    </div>

    <div class="bottomnavbar">
        <a href="../index.html">Home</a>
        <a href="#news">News</a>
        <a href="#contact">Contact</a>
    </div>
</body>

</html>