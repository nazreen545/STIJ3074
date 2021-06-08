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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>

<body>
    <div class="header">
    <h1> MyShop Bouquet & Giftbox </h1>
		<p>Myshop 2021.</p>

    </div>
    <div class="topnavbar">
        <a href="#">Home</a>
        <a href="#">My Cart</a>
        <a href="#">My Purchase</a>
        <a href="#contact">Contact</a>
        <a href="../html/login.html" class="right">Logout</a>
    </div>
    <center>
        <h2>Welcome <?php echo $username ?></h2>
        <h2>Thank You For Choosing our shop 😇</h2>
    </center>

</head>
    <div class="container-src">
        <form action="newproduct.php" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="column">
                    <input type="text" id="fprname" name="prname" placeholder="Product name..">
                </div>
                <div class="column">
                    <select id="idprtype" name="prtype">
                        <option value="all">All</option>
                        <option value="electronic">Electronics</option>
                        <option value="beverage">Beverage</option>
                        <option value="canned">Canned Food</option>
                    </select>
                </div>
                <div class="column">
                    <input type="submit" name="button" value="Search">
                </div>
            </div>
        </form>
    </div>
    <?php
    echo "<div class='card-row'>";
    foreach ($rows as $products) {
        $prodid = $products['prid'];
        echo " <div class='card'>";
        $imgurl = "images/" . $products['picture'];
        echo "<img src='$imgurl' class='primage'>";
        echo "<h4 align='center' >" . ($products['prname']) . "</h3>";
        echo "<p align='center'> RM " . number_format($products['prprice'], 2) . "<br>";
        echo "Avail:" . ($products['prqty']) . " unit/s</p>";
        echo "<a href='index.php?op=cart&email=$email&prodid=$prodid'><i class='fas fa-cart-plus' style='font-size:24px;color:dodgerblue'></i></a>";

        echo "</div>";
    }
    echo "</div>";
    ?>
    <a href="php/newproduct.php" class="float">
        <i class="fa fa-plus my-float"></i>
    </a>
</body>

</html>
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