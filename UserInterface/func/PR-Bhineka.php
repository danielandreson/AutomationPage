<?php
$TotalResultBhineka=0;
$ResultKeyword=2;
$ExplodeCategory=explode(" ",$Category);
$ExplodeKeyword=explode(" ",$Keyword);
$resultCategoryPass=0;
$resultKeywordPass=0;
$isFirstTime=0;

ini_set("memory_limit","348M");

$executeAuto=shell_exec('AutomationPage.exe https://www.google.com/ '. $ShowProgress. ' '. 'VALUENCLICK' . ' "bhinneka.com '. $Category . ' '. $Keyword . '"');
$html_Bhineka = new simple_html_dom();
$html_Bhineka->load($executeAuto);

try 
{
	foreach($html_Bhineka->find('div.rc') as $element) 
	{
		foreach($element->find('h3.r') as $linkPerCategory) 
		{
		
		    $LinkCategory[0]=$element->find('a',0)->href;
		    $LinkValue[0]= $element->find('a',0)->innertext;
		  
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
		     	//echo $LinkValue[0] ." ". $LinkCategory[0]."<br/>"; 
		        for ($i=1; $i<=$MaxPage; $i++)
		        {
				   	$isFirstTime=1;
				   	$PathLink=$LinkCategory[0].'?page='.$i;
					$executeContent=shell_exec('AutomationPage.exe '.$PathLink. ' '.$ShowProgress. ' '. 'AUTOPAGE');
					$Content_Base_Bhineka = new simple_html_dom();
					$Content_Base_Bhineka->load($executeContent);

					foreach($Content_Base_Bhineka->find('li.prod-itm') as $Contentelement) 
					{
						$linkBox[0]="http://www.bhinneka.com" .$Contentelement->find('a',0)->href;
						$Image[0]=$Contentelement->find('img',0)->src;
						$ProductName[0]=$Contentelement->find('span.prod-itm-fullname',0)->innertext;
						$ProductPrice[0]=$Contentelement->find('span.prod-itm-price-grid',0)->plaintext;


						
						$RemoveCharacterPrice = str_replace('rp', '', strtolower($ProductPrice[0]));
						$RemoveCharacterPrice = str_replace(',', '', strtolower($RemoveCharacterPrice));
						// echo $linkBox[0]."<br/>";
						// echo $Image[0]."<br/>";
						// echo $ProductName[0]."<br/>";
						// echo $RemoveCharacterPrice."<br/>";
						for ($indexKeyword=0; $indexKeyword<count($ExplodeKeyword); $indexKeyword++)
						{
							if(strpos(strtolower($ProductName[0]), strtolower($ExplodeKeyword[$indexKeyword])) !== false) 
							{
								$resultKeywordPass=1;
							}
						}

						if($resultKeywordPass==1)
						{

							$executeContentSeller=shell_exec('AutomationPage.exe '.$linkBox[0]. ' '.$ShowProgress. ' '. 'AUTOPAGE');
							$Content_Base_BhinekaSeller = new simple_html_dom();
							$Content_Base_BhinekaSeller->load($executeContentSeller);
							
							foreach($Content_Base_BhinekaSeller->find('div#ctl00_content_divProvidedBy') as $ContentelementSeller) 
							{
								$Seller[0]=$ContentelementSeller->find('a',0)->innertext;
							}

							$ResultKeyword=3;
							$sql=mysqli_query($conn, "INSERT INTO tblcrawl(ProductLink,ImageLink,ProductName,ProductPrice,Source,Seller) VALUES('{$linkBox[0]}','{$Image[0]}','{$ProductName[0]}','{$RemoveCharacterPrice}','BHINEKA','{$Seller[0]}')");
							
							$TotalResultBhineka++;

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
							$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,LinkChild,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','{$PathLink}','BHINEKA','3')");

							if ($sql === FALSE) 
						 	{
	        					throw new Exception(mysqli_error($conn));
	    					}
	    						$isFirstTime=0;
						}
						
						if ($TotalResultBhineka==$BhinekaLimit) 
						{
							break 4;
						}
					
					  	$resultKeywordPass=0;
					}
					if($isFirstTime==1)
					{
						$LinkValue[0]=str_replace("'","",$LinkValue[0]);
						$LinkCategory[0]=str_replace("'","",$LinkCategory[0]);
						$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,LinkChild,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','{$PathLink}','BHINEKA','2')");
						if ($sql === FALSE) 
					 	{
        					throw new Exception(mysqli_error($conn));
    					}
						
					}
					$Content_Base_Bhineka->clear(); 
					unset($Content_Base_Bhineka);
				}

		                   
		    }
		    else
			{
				$LinkValue[0]=str_replace("'","",$LinkValue[0]);
				$LinkCategory[0]=str_replace("'","",$LinkCategory[0]);
				$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','BHINEKA','1')");
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
$html_Bhineka->clear(); 
unset($html_Bhineka);
?>