<?php
include('DBconnect.php');
?>
<html>
   <head>
     <title>order status update</title>
   </head>
   <body>
    <h3 color=blue>Enter the order ID and select current status of order:</h3>
	<form method="post">
	  <p>Order ID:<input type="text" name="order_id"></p>
	  <p><input type="radio" name="status" value="pending" /> pending</p>
	  <p><input type="radio" name="status" value="preparing" /> preparing</p>
	  <p><input type="radio" name="status" value="dispatched" /> dispatched</p>	  
	  <p><input type="radio" name="status" value="delivered" /> delivered</p>
	  <p><input type="radio" name="status" value="cancelled" /> cancelled</p>
	  <p><input type="submit" name="update" value="update" /></p>
    </form>


<?php

$order_id=$_POST["order_id"];
$status=$_POST["status"];

mysqli_query($conn,"UPDATE orders SET order_status='$status' where order_id='$order_id'");
	echo "$status";



?>

</body>

</html>