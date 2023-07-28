
<html lang="en">
<style>
h1{
	text-decoration: underline;
}
table.center{
	margin-left: auto;
	margin-right: auto;
}
p {
  border-top-style: solid;
  border-right-style: solid;
  border-bottom-style: solid;
  border-left-style: solid;
}
</style>
<head>
    <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content="About the site"/>
	<meta name="author" content="Author name"/>
	<title> admin order view  </title>
	
	<!-- core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
	<link href="css/font-awesome.min.css" rel="stylesheet"/>
	<link href="css/animate.min.css" rel="stylesheet"/>
	<link href="css/main.css" rel="stylesheet"/>
	</head>
	
	<body>
	  <!-- following section is used for creating the menubar in the webpage -->
	  <section id="header">
	      <div class="row">
		      <div align="center" class="col-md-2" style="font-size: 60px;color:black;"> Order Panel </div>
			 
          </div>
      </section>

      <section id = "section 1">
          
		  <div style="margin-left:10%; margin-right:10%;margin-top:50px; margin-bottom:50px; text-align:center; ">
		  
		     
			 <table align="center" border="1px" style="width:900px; line-height:30px;">
	   
	    <t>
	       <th>Order ID</th>
		   <th>user ID</th>
		   <th>price</th>
		   <th>order date</th>
		   <th>quantity</th>
		   <th>address</th>
		   <th>order status</th>
	    </t>
			 
			 <!-- here we will write php codes to fetch data from database and will show in the rows of this table -->
			 
			 
			 
			 <?php
			 require_once("DBconnect.php");
			 $sql = "SELECT * from orders";
			 $result = mysqli_query($conn, $sql);
			
			 if (mysqli_num_rows($result) != 0) {
				 
				 //here we will print every row that is returned by our query $sql
				 while ($rows = mysqli_fetch_array($result)){
				//here we will write some html codes, so we will close php tag	 
			 
			 ?>
			 
			 <tr>
		      <td><?php echo $rows["order_id"]; ?></td> 
			  <td><?php echo $rows["u_id"]; ?></td> 
			  <td><?php echo $rows["price"]; ?></td> 
			  <td><?php echo $rows["order_date"]; ?></td> 
			  <td><?php echo $rows["quantity"]; ?></td> 
			  <td><?php echo $rows["address"]; ?></td> 
			  <td><?php echo $rows["order_status"]; ?></td> 
		     </tr>
			 
			 <?php
			     }
			 }
             ?>			 
			 </table>
			 
			 <a href="status_update.php" align="center" > Status Update </a>
			 
			 
			 
			 
			 
           </div>
		 
		 
      </section>


      <!----- Footer ----->
      <section id="footer">

      </section>
      <script src="js/jquery.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery.isotope.min.js"></script>
      <script src="js/wow.min.js"></script>
    </body>
	
</html>				  