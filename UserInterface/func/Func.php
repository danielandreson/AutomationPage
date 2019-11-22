<?php

include('conn.php');
$MethodFunc=$_POST['MethodFunc'];

if($MethodFunc=="INSERTCOMMENT")
{
	$Name=$_POST['name'];
	$Address=$_POST['address'];
	$Education=$_POST['education'];
	$Note=$_POST['note'];
	$RateQuality=$_POST['rateQuality'];
	$RateFresh=$_POST['rateFresh'];
	$RatePerform=$_POST['ratePerform'];
	$RatePageCorresponding=$_POST['ratePageCorresponding'];

	try 
	{
		$sql=mysqli_query($conn, "INSERT INTO tblComment(Name, Address, Education, CreatedDate, CreatedBy, Active,Note, RateQuality,RateFresh, RatePerform, RatePageCorresponding) VALUES('{$Name}','{$Address}','{$Education}',NOW(),'{$Name}',1,'{$Note}','{$RateQuality}','{$RateFresh}','{$RatePerform}','{$RatePageCorresponding}')");
		if ($sql === FALSE) 
		{
    		throw new Exception(mysqli_error($conn));
		}
		else
		{
			echo "Sukses";
		}
	} 
	catch(Exception $e) 
	{
    	echo $e;
	}
}
?>