<?php
require_once('../config.php');
$id = $_GET['id'];
$select = "SELECT * FROM shoe_shop_product where product_id = $id";
$query = mysqli_query($conn, $select);
$res = mysqli_fetch_assoc($query);
echo json_encode($res);
?>