<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<?php 
	echo "<div class='ContainerProduct'>"
			."<div class='row'>"
				."<div class='col-xs-1' style='text-align:center;'></div>"
				."<div class='col-xs-3' style='text-align:center;'>"
				."<div><h1>Top 4 Lowest Price</h1></div>"      	
				."</div>"	
			."</div>"
		."</div>"; 

	error_reporting(0);
	if ( strpos(strtolower($_SERVER['SCRIPT_NAME']),strtolower(basename(__FILE__))) ) 
	{
	    header("Location: index.php");
	    die("Denny access");
	}
	
	set_exception_handler('exception_handler') ;

	if(mysqli_connect_error()) 
	{
		throw new Exception("<b>Could not connect to database</b>") ;
	}
	if (!$result = $conn->query("SELECT * FROM tblcrawl ORDER BY ProductPrice ASC LIMIT 0,4")) 
	{
	    throw new Exception("<b>Could not read data from the table </b>") ;
	}

	while ($data = $result->fetch_object()) 
	{
		$id = $data->id;
		$ImageLink = $data->ImageLink ;
		$ProductName = substr($data->ProductName,0,25);
		$ProductPrice = $data->ProductPrice ;
		$ProductLink=$data->ProductLink;
		echo "<div>"
			               			."<div class='col-xs-3' style='text-align:center;'>"
				               		."<a href='{$ProductLink}'>"
				               		  ."<img class='text-center' src='".$ImageLink."' style='width:200px; height:200px;'>"
				               		  ."<div class='text-center' ><span>{$ProductName}</span></div>"
				               		  ."<div class='text-center'><span >Rp. ".number_format($ProductPrice, 0 , '' , '.' )."</span></div>"
				               		."</a>"
				               		."</div>"
						."</div>"; 

	} 
	/* close connection */
	function exception_handler($exception) {
	  echo "Exception cached : " , $exception->getMessage(), "";
	}

?>