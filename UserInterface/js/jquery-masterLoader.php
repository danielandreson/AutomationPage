<link rel="stylesheet" type="text/css" href="css/my-app.css">
<?php 

	error_reporting(0);
	set_exception_handler('exception_handler') ;
	include "func/conn.php";

	if ( strpos(strtolower($_SERVER['SCRIPT_NAME']),strtolower(basename(__FILE__))) ) 
	{
	    header("Location: index.php");
	    die("Denny access");
	}

	if(mysqli_connect_error()) 
	{
		throw new Exception("<b>Could not connect to database</b>") ;
	}

	if (!$result = $conn->query("SELECT * FROM tblcrawl ORDER BY ProductPrice ASC LIMIT 0,4")) 
	{
	    throw new Exception("<b>Could not read data from the table </b>") ;
	}
	
 	if($results->num_rows === 0)
    {
    	echo "<p style='margin-left:20px; padding-bottom:5px;font-weight:bold;'>No results, Please go with new search</p>";
	}
	else
   	{
		echo "<p style='margin-left:20px; padding-bottom:5px;font-weight:bold;'>Cheapest price is :</p><ul class='Gridcontainer float'>";
		
	   
		while ($data = $result->fetch_object()) 
		{
			$ImageLink = $data->ImageLink ;
			$ProductName = substr($data->ProductName,0,25);
			$ProductPrice = $data->ProductPrice ;
			$ProductLink=$data->ProductLink;
			$ProductSource=$data->Source;
			$Seller=$data->Seller;
			$explodeWord=explode(" ",  $_SESSION['Keyword']);
			for($indexExplodeWord=0; $indexExplodeWord<count($explodeWord); $indexExplodeWord++)
			{
				$ProductName =boldWord($explodeWord[$indexExplodeWord],$ProductName);
			}
			if($ProductSource=="TOKOPEDIA")
			{
				$imgSource="img/tp.png";
			}
			else if($ProductSource=="LAZADA")
			{
				$imgSource="img/lz.png";
			}
			else 
			{
				$imgSource="img/bl.png";
			}
			echo "<li class='item float-item'><div>"
			               		."<a href='{$ProductLink}'>"
			               		  ."<img class='text-center' style='width:100%; height:200px;' src='".$ImageLink."'>"
			               		  ."<div class='text-center' style='font-family:Montserrat,sans-serif;font-size:14px;color:black;'><span>{$ProductName}</span></div>"
			               		  ."<div class='text-center' style='font-family:Montserrat,sans-serif;font-size:14px;color:darkorange;'><span >Rp. ".number_format($ProductPrice, 0 , '' , '.' )."</span></div>"
			               		  ."<div class='text-center' style='font-family:Montserrat,sans-serif;font-size:14px;color:darkorange;'> <span>{$Seller}</span><sup><img src='{$imgSource}' width=25px; height=25px;/> </sup></div>"
			               		."</a>"
			               		."</div></li>";
							

		} 	
		echo "</ul>";

		if (!$result = $conn->query($_SESSION['QueryMaster'])) 
		{
		    throw new Exception("<b>Could not read data from the table </b>") ;
		}
		echo "<p style='margin-left:20px; padding-bottom:5px;font-weight:bold;'>Other :</p><ul class='Gridcontainer float'>";
	
		while ($data = $result->fetch_object()) 
		{
			$id = $data->id;
			$ImageLink = $data->ImageLink ;
			$ProductName = substr($data->ProductName,0,25);
			$ProductPrice = $data->ProductPrice ;
			$ProductLink=$data->ProductLink;
			$ProductSource=$data->Source;
			$Seller=$data->Seller;
			$explodeWord=explode(" ",  $_SESSION['Keyword']);
			for($indexExplodeWord=0; $indexExplodeWord<count($explodeWord); $indexExplodeWord++)
			{
				$ProductName =boldWord($explodeWord[$indexExplodeWord],$ProductName);
			}
			if($ProductSource=="TOKOPEDIA")
			{
				$imgSource="img/tp.png";
			}
			else if($ProductSource=="LAZADA")
			{
				$imgSource="img/lz.png";
			}
			else 
			{
				$imgSource="img/bl.png";
			}

			echo "<li class='item float-item'><div class='postedComment' id=\"$data->id \">"
					               		."<a href='{$ProductLink}'>"
					               		  ."<img class='text-center' style='width:100%; height:200px;' src='".$ImageLink."'>"
					               		  ."<div class='text-center' style='font-family:Montserrat,sans-serif;font-size:14px; color:black;'><span>{$ProductName}</span></div>"
					               		  ."<div class='text-center'style='font-family:Montserrat,sans-serif;font-size:14px;color:darkorange;'><span >Rp. ".number_format($ProductPrice, 0 , '' , '.' )."</span></div>"
					               		   ."<div class='text-center' style='font-family:Montserrat,sans-serif;font-size:14px;color:darkorange;'> <span>{$Seller}</span><sup><img src='{$imgSource}' width=25px; height=25px;/> </sup></div>"
					               		."</a>"
					               	."</div></li>";
		}
		
		echo "</ul>";
	}
	/* close connection */
	$db->close();
	function exception_handler($exception) {
	  echo "Exception cached : " , $exception->getMessage(), "";
	}
	function boldWord($word,$text)
	{
		$word = strtolower($word);
		$ucf_word = ucfirst($word);
		$uc_word = strtoupper($word);
		return str_replace(array($word,$ucf_word,$uc_word), array("<b style='background-color:yellow;'>$word</b>","<b style='background-color:yellow;''>$ucf_word</b>","<b style='background-color:yellow;''>$uc_word</b>"), $text); 
	}

?>