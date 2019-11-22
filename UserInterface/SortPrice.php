<?php
	$MinPrice=$_POST['PriceMinimal'];
	$MaxPrice=$_POST['PriceMaximal'];
	if(!session_id()) session_start();
	if($MinPrice=="" && $MaxPrice!="")
	{
		$QueryMaster = "SELECT * FROM tblcrawl WHERE ProductPrice<=$MaxPrice ORDER BY Id,ProductPrice ASC LIMIT 0,30";
		$QueryLoadMore="SELECT * FROM tblCrawl WHERE id >%u and ProductPrice<=$MaxPrice ORDER BY Id,ProductPrice ASC LIMIT 0 , 10";
	}
	else if($MaxPrice=="" && $MinPrice!="")
	{
		$QueryMaster = "SELECT * FROM tblcrawl WHERE ProductPrice>=$MinPrice ORDER BY Id,ProductPrice ASC LIMIT 0,30";
		$QueryLoadMore="SELECT * FROM tblCrawl WHERE id >%u and ProductPrice>=$MinPrice ORDER BY Id,ProductPrice ASC LIMIT 0 , 10";
	}
	else if($MaxPrice!="" && $MinPrice!="")
	{
		$QueryMaster = "SELECT * FROM tblcrawl WHERE ProductPrice>=$MinPrice and ProductPrice<=$MaxPrice ORDER BY Id,ProductPrice ASC LIMIT 0,30";
		$QueryLoadMore="SELECT * FROM tblCrawl WHERE id >%u and ProductPrice>=$MinPrice and ProductPrice<=$MaxPrice ORDER BY Id,ProductPrice ASC LIMIT 0 , 10";
	}
	else 
	{
		$QueryMaster = "SELECT * FROM tblcrawl ORDER BY Id,ProductPrice ASC LIMIT 0,30";
		$QueryLoadMore="SELECT * FROM tblCrawl WHERE id >%u ORDER BY Id,ProductPrice ASC LIMIT 0 , 10";
	}
    $_SESSION['QueryMaster'] = $QueryMaster;
    $_SESSION['QueryLoadMore'] = $QueryLoadMore;
    $_SESSION['MinPrice'] = $MinPrice;
    $_SESSION['MaxPrice'] = $MaxPrice;

?>
<div id="postedComments">
	<?php require_once 'js/jquery-masterLoader.php' ;  ?>
</div>
