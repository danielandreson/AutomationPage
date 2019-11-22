<?php
$TotalResultTokopedia=0;
$ResultKeyword=2;
$ExplodeCategory=explode(" ",$Category);
$ExplodeKeyword=explode(" ",$Keyword);
$resultCategoryPass=0;
$resultKeywordPass=0;
$isFirstTime=0;

// echo 'AutomationPage.exe https://www.google.com/ '. $ShowProgress. ' '. 'VALUENCLICK' . ' "'. $Category . ' '. $Keyword . '"';

$executeAuto=shell_exec('AutomationPage.exe https://www.google.com/ '. $ShowProgress. ' '. 'VALUENCLICK' . ' "Tokopedia.com '. $Category . ' '. $Keyword . '"');
$html_base_Tokopedia = new simple_html_dom();
$html_base_Tokopedia->load($executeAuto);
// echo $executeAuto;
// echo $Category."<br/>";
// echo $Keyword;
try 
{
 	foreach($html_base_Tokopedia->find('div.rc') as $element) 
	{
		foreach($element->find('h3.r') as $linkPerCategory) 
		{
			$LinkCategory[0]=$linkPerCategory->find('a',0)->href;
			$LinkValue[0]=$linkPerCategory->find('a',0)->innertext;
			

			/* Pencarian pada keyword yang di split */

			for ($indexCategory=0; $indexCategory<count($ExplodeCategory); $indexCategory++)
			{
				if(strpos(strtolower($LinkValue[0]), strtolower($ExplodeCategory[$indexCategory])) !== false) //Bandingkan dengan category yang dimiliki
				{
					$resultCategoryPass=1;
				}
			}

			for ($indexKeyword=0; $indexKeyword<count($ExplodeKeyword); $indexKeyword++)
			{
				if(strpos(strtolower($LinkValue[0]), strtolower($ExplodeKeyword[$indexKeyword])) !== false) 
				{
					$resultCategoryPass=1;
				}
			}
			
			/* Mulai Pencarian pada keyword yang di split */
			if($resultCategoryPass==1)
			{
				
				for ($i=1; $i<=$MaxPage; $i++)
				{
					$isFirstTime=1;
					
					$PathLink=$LinkCategory[0].'?page='.$i;
					$executeContent=shell_exec('AutomationPage.exe '. $PathLink .' '.$ShowProgress. ' '. 'AUTOPAGE');
					$Content_Base_Tokopedia = new simple_html_dom();
					$Content_Base_Tokopedia->load($executeContent);

					foreach($Content_Base_Tokopedia->find('div.category-product-box') as $Contentelement) 
					{
						$linkBox[0]=$Contentelement->find('a',0)->href;
						$Image[0]=$Contentelement->find('img',0)->src;
						$ProductName[0]=$Contentelement->find('div.product-name',0)->innertext;
						$ProductPrice[0]=$Contentelement->find('div.product-price',0)->innertext;
						$Seller[0]=$Contentelement->find('div.shop-detail__name',0)->find('a',0)->innertext;
						$RemoveCharacterPrice = str_replace('rp', '', strtolower($ProductPrice[0]));
						$RemoveCharacterPrice = str_replace('.', '', strtolower($RemoveCharacterPrice));
						
						for ($indexKeyword=0; $indexKeyword<count($ExplodeKeyword); $indexKeyword++)
						{
							if(strpos(strtolower($ProductName[0]), strtolower($ExplodeKeyword[$indexKeyword])) !== false) 
							{
								$resultKeywordPass=1;
							}
						}

						if($resultKeywordPass==1)
						{
							$ResultKeyword=3;

							$sql=mysqli_query($conn, "INSERT INTO tblcrawl(ProductLink,ImageLink,ProductName,ProductPrice,Source,Seller) VALUES('{$linkBox[0]}','{$Image[0]}','{$ProductName[0]}','{$RemoveCharacterPrice}','TOKOPEDIA','{$Seller[0]}')");

						 	

							$TotalResultTokopedia++;

							if ($sql) 
							{
								echo "<script>console.log('sukses')</script>";
							}
						
						}
						else if($resultKeywordPass==0)
						{
							$ResultKeyword=2;
						}

						
						if($ResultKeyword==3 && $isFirstTime==1)
						{
							$LinkValue[0]=str_replace("'","",$LinkValue[0]);
							$LinkCategory[0]=str_replace("'","",$LinkCategory[0]);
							$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,LinkChild,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','{$PathLink}','TOKOPEDIA','3')");

							if ($sql === FALSE) 
						 	{
	        					throw new Exception(mysqli_error($conn));
	    					}
	    					$isFirstTime=0;
						}
						
						if ($TotalResultTokopedia==$TokopediaLimit) 
						{
							break 4;
						}
						
					  	$resultKeywordPass=0;
					}

					if($isFirstTime==1)
					{
						$LinkValue[0]=str_replace("'","",$LinkValue[0]);
						$LinkCategory[0]=str_replace("'","",$LinkCategory[0]);
						$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,LinkChild,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','{$PathLink}','TOKOPEDIA','2')");
						if ($sql === FALSE) 
					 	{
        					throw new Exception(mysqli_error($conn));
    					}
						
					}

					
					
					$Content_Base_Tokopedia->clear(); 
					unset($Content_Base_Tokopedia);
				}
				
			}
			else
			{
				$LinkValue[0]=str_replace("'","",$LinkValue[0]);
				$LinkCategory[0]=str_replace("'","",$LinkCategory[0]);
				$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','TOKOPEDIA','1')");
				if ($sql === FALSE) 
				{
	        		throw new Exception(mysqli_error($conn));
	    		}
			}
			$resultCategoryPass=0;
			
		}
	}
} 
catch(Exception $e) 
{
    echo $e;
 }
$html_base_Tokopedia->clear(); 
unset($html_base_Tokopedia);
?>