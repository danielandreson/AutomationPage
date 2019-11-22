<?php	
	
	include "func/PubVar.php";
	include('func/conn.php');
	require_once 'simple_html_dom.php';

	/* Variable Declaretion */
	if(!session_id()) session_start();
	$QueryMaster = "SELECT * FROM tblcrawl ORDER BY id ASC";
	$QueryLoadMore="SELECT * FROM tblCrawl WHERE id >%u ORDER BY id ASC LIMIT 0 , 10";

	$_SESSION['QueryMaster'] = $QueryMaster;
	$_SESSION['QueryLoadMore'] = $QueryLoadMore;
	$_SESSION['Category']=$_POST['txtCategory'];
	$_SESSION['Keyword']=$_POST['txtSearch'];
	$_SESSION['LimitSearch']=$_POST['LimitSearch'];
	$_SESSION['SearchType']=$_POST['txtSearchType'];
	$Category=$_POST['txtCategory'];
	$Keyword=$_POST['txtSearch'];
	$LimitSearch=$_POST['LimitSearch'];
	$SearchType=$_POST['txtSearchType'];

	$LazadaLimit=$BhinekaLimit=$TokopediaLimit=0; 
	$LazadaLimitTemp=$BhinekaLimitTemp=$TokopediaLimitTemp=0;
	
	$MaxPage=2;
	if(isset($_POST['ShowProgress'])=="YES")
	{
		$ShowProgress="YES";
	}
	else
	{
		$ShowProgress="NO";
	}

	/*End  Variable Declaretion */

	// include "func/ClearDB.php";

	// if($SearchType=="BFS" || $SearchType=="BREADTH-FIRST-SEARCH")
	// {
	// 	$TokopediaLimit=ceil($LimitSearch/3);
	// 	 include "func/BFS-Tokopedia.php";

	// 	if (!$result = $conn->query("SELECT Count(*) as 'TotalRow' FROM tblcrawl WHERE Source='TOKOPEDIA'")) 
	// 	{
	// 	    throw new Exception("<b>Could not read data from the table </b>") ;
	// 	}
	// 	while ($data = $result->fetch_object()) 
	// 	{
	// 		$TokopediaLimitTemp=$data->TotalRow;
	// 	}

	// 	if(($TokopediaLimitTemp+$BhinekaLimitTemp+$LazadaLimitTemp)<$LimitSearch)
	// 	{
	// 		$BhinekaLimit=ceil($LimitSearch/3)+($TokopediaLimit-$TokopediaLimitTemp);
	// 		 include "func/BFS-Bhineka.php";
			

	// 		if (!$result = $conn->query("SELECT Count(*) as 'TotalRow' FROM tblcrawl WHERE Source='BHINEKA'")) 
	// 		{
	// 		    throw new Exception("<b>Could not read data from the table </b>") ;
	// 		}
	// 		while ($data = $result->fetch_object()) 
	// 		{
	// 			$BhinekaLimitTemp=$data->TotalRow;
	// 		}

	// 		if(($TokopediaLimitTemp+$BhinekaLimitTemp+$LazadaLimitTemp)<$LimitSearch)
	// 		{
	// 			$LazadaLimit=ceil($LimitSearch/3)+($TokopediaLimit-$TokopediaLimitTemp)+($BhinekaLimit-$BhinekaLimitTemp);
	// 			include "func/BFS-Lazada.php";
				
	// 		}
	// 	}
	// }
	// else if($SearchType=="PR" || $SearchType=="PAGE-RANK")
	// {
	// 	$TokopediaLimit=ceil($LimitSearch/3);
	// 	include "func/PR-Tokopedia.php";

	// 	if (!$result = $conn->query("SELECT Count(*) as 'TotalRow' FROM tblcrawl WHERE Source='TOKOPEDIA'")) 
	// 	{
	// 	    throw new Exception("<b>Could not read data from the table </b>") ;
	// 	}
	// 	while ($data = $result->fetch_object()) 
	// 	{
	// 		$TokopediaLimitTemp=$data->TotalRow;
	// 	}

	// 	if(($TokopediaLimitTemp+$BhinekaLimitTemp+$LazadaLimitTemp)<$LimitSearch)
	// 	{
	// 		$BhinekaLimit=ceil($LimitSearch/3)+($TokopediaLimit-$TokopediaLimitTemp);
	// 		include "func/PR-Bhineka.php";
			

	// 		if (!$result = $conn->query("SELECT Count(*) as 'TotalRow' FROM tblcrawl WHERE Source='BHINEKA'")) 
	// 		{
	// 		    throw new Exception("<b>Could not read data from the table </b>") ;
	// 		}
	// 		while ($data = $result->fetch_object()) 
	// 		{
	// 			$BhinekaLimitTemp=$data->TotalRow;
	// 		}

	// 		if(($TokopediaLimitTemp+$BhinekaLimitTemp+$LazadaLimitTemp)<$LimitSearch)
	// 		{
	// 			$LazadaLimit=ceil($LimitSearch/3)+($TokopediaLimit-$TokopediaLimitTemp)+($BhinekaLimit-$BhinekaLimitTemp);
	// 			include "func/PR-Lazada.php";
				
	// 		}
	// 	}
	// }
?>
	<div id="postedComments">
		<?php include('js/jquery-masterLoader.php');  ?>

		
	</div>

	