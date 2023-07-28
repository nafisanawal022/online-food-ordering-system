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
	<title> User order view  </title>
	
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
	   
	    <form method="post">
	  <p>User ID:<input type="text" name="user_id">
	  <input type="submit" name="submit" value="submit" /></p>
	  </form>
		<t>
	       <th>Order ID</th>
		   <th>order date</th>
		   <th>order status</th>
	    </t>
			 
			 <!-- here we will write php codes to fetch data from database and will show in the rows of this table -->
			 
			 
			 
			 <?php
			 $user=$_POST['user_id'];
			 require_once("DBconnect.php");
			 $sql = "SELECT order_id,order_date,order_status from orders where u_id='$user'";
			 $result = mysqli_query($conn, $sql);
			
			 if (mysqli_num_rows($result) != 0) {
				 
				 //here we will print every row that is returned by our query $sql
				 while ($rows = mysqli_fetch_array($result)){
				//here we will write some html codes, so we will close php tag	 
			 
			 ?>
			 
			 <tr>
		      <td><?php echo $rows["order_id"]; ?></td> 
			  <td><?php echo $rows["order_date"]; ?></td> 
			  <td><?php echo $rows["order_status"]; ?></td> 
		     </tr>
			 
			 <?php
			     }
			 }
             ?>			 
			 </table>
			 			 
			 			 
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