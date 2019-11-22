<?php

$requested_page = $_POST['page_num'];
$set_limit = (($requested_page - 1) * 2) . ",4";

$con = mysql_connect("localhost", "root", "");
mysql_select_db("system_crawl");

$result = mysql_query("select SUBSTRING(ProductName, 1, 25) as 'ProductName',ProductLink,ImageLink,ProductPrice from tblcrawl order by id asc limit $set_limit");


while ($data = mysql_fetch_array($result)) {
		echo "<div class='ContainerProduct'>"
               		."<div class='col-xs-3' style='text-align:center;'>"
	               		."<a href='{$data['ProductLink']}'>"
	               		  ."<img class='text-center' src='".$data['ImageLink']."' style='width:200px; height:200px;'>"
	               		  ."<div class='text-center'><span>{$data['ProductName']}</span></div>"
	               		  ."<div class='text-center'><span>Rp. {$data['ProductPrice']}</span></div>"
	               		."</a>"
	               	."</div>"
				."</div>"; 
}

exit;
?>
