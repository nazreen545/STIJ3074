<?php
include_once("dbconnect.php"); 

if (isset($_GET['submit'])) { 
        $prname = addslashes($_GET['prname']);
        $prprice = addslashes($_GET['prprice']);
        $prqty = addslashes($_GET['prqty']);
        $prtype = addslashes($_GET['prtype']);
        if ($prtype == "noselection") {
            echo "<script> alert('Please select product type')</script>"; 
        } else {//insert to database tbl_products
            $sqlinsert = "INSERT INTO tbl_products(prname,prprice,prqty,prtype) VALUES('$prname','$prprice','$prqty','$prtype')";
            try {
                $conn->exec($sqlinsert);
                echo "<script> alert('Item added ')</script>"; //done add
                echo "<script> window.location.replace('../index.php')</script>";
            } catch (PDOException $e) {
                echo "<script> alert('Failed')</script>"; 
        }}} 


?>
<!DOCTYPE html>
<html>

<head>
    <title>New Product Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/style.css">

</head>

<body>
    <div class="header">
    <h1> MyShop Bouquet & Giftbox </h1>
		<p>Myshop 2021.</p>

    </div>
    <div class="topnavbar" id="myTopnav">

        <a href="#">My Profile</a>
        <a href="#">Contact Us</a>
            <i class="fa fa-bars"></i>
        </a>
    </div>
    <div class="main">
        <div class="row-single">
            <center>

                <h1>NEW PRODUCT</h1>
            </div>
            <center>
            </div>
    
            <form name="questionForm" action="newproduct.php" onsubmit="return validateNewQForm()" method="get">
                
                <div class="row">
                    <div class="col-25">
                        <label for="fname"><b>Insert ID Product<b></label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="prid" name="prid" placeholder="Enter your ID product here..">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lnamea">Insert Product Name :</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="prname" name="prname" placeholder="Please insert your product Name..">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="answer">Product Type: </label>
                    </div>
                    <div class="col-75">
                        <select name="prtype" id="prtypes" required>
                            <option value="">Please Select</option>
                            <option value="Gift">Gift</option>
                            <option value="Bouquet">Bouquet</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lnamec">Product Price: </label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="prprice" name="prprice" placeholder="Please insert product price..">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lnamed">Product Quantity: </label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="prqty" name="prqty" placeholder="Please insert quantity..">
                    </div>
                </div><br>
                <div class="row">
                    <div class="col-25">
                        <label for="lnamed">Picture: </label>
                    </div>
                    <div class="col-75">
                    <img class="imgselection" src="../images/profile/profile.png" height="100" width="100"><br>
						<input type="file" onchange="previewFile()" name="fileToUpload" id="fileToUpload"><br>
                    </div>
                </div><br>
                </form>

                <div class="row">
                    <div><input type="submit" name="submit"  value="Submit">
                    </div>
                </div>
            </form>
      

        <div class="bottomnavbar">

            <a href="#contact"></a>
        </div>
</body>

</html>