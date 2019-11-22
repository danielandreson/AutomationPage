<?php
$Category=$_POST['txtCategory'];
$Search=$_POST['txtSearch'];

/* Validation */
if($Category=="" && $Search=="")
{
	echo "<script>alert('Cek kembali pengisian data');</script>";
	echo "<script>window.location='../index.php';</script>";
}
/* End Validation */
else
{

	$exitPhantom=shell_exec('phantomjs.exe func/Stop.js');
	$getCategory = shell_exec('phantomjs.exe func/Tokopedia.js CATEGORY '.$Category.' '.$Search);
	$splitCategory=explode(";",$getCategory);
	
	for($i=1; $i<count($splitCategory); $i++)
	{
		$indexPage=1;
		for (;;) 
		{
		
			$linkEncode= rawUrlEncode($splitCategory[$i]."?page=".$indexPage);
			$getContent = shell_exec("phantomjs.exe func/Tokopedia.js CONTENT ".$linkEncode." ".$Search);
			
			echo $getContent;
			if($indexPage>0 || $getContent=="NODATA")
			{
				break;
			}
			else
			{
			
				$indexPage++;
			}
		}

	} 
	
}
?>