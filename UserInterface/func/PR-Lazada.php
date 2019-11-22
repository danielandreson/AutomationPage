<?php

$TotalResultLazada=0;
$ResultKeyword=2;
$ExplodeCategory=explode(" ",$Category);
$ExplodeKeyword=explode(" ",$Keyword);
$resultCategoryPass=0;
$resultKeywordPass=0;
$isFirstTime=0;
$executeAuto=shell_exec('AutomationPage.exe https://www.google.com/ '. $ShowProgress. ' '. 'VALUENCLICK' . ' "lazada.com '. $Category . ' '. $Keyword . '"');
$html_Lazada = new simple_html_dom();
$html_Lazada->load($executeAuto);

try 
{
	foreach($html_Lazada->find('div.rc') as $element) 
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
		     //	echo $LinkValue[0] ." ". $LinkCategory[0]."<br/>"; 
	            for ($i=1; $i<=$MaxPage; $i++)
	            {
	            	$isFirstTime=1;
					$PathLink=$LinkCategory[0].'?page='.$i;
				    $html = file_get_contents($PathLink);
					$dom  = new DOMDocument();
					libxml_use_internal_errors( 1 );
					$dom->loadHTML( $html );
					$xpath = new DOMXpath( $dom );

					$jsonScripts = $xpath->query( '//script[@type="application/ld+json"]' );
					//echo $jsonScripts->item(0)->nodeValue;
					$json =trim($jsonScripts->item(1)->nodeValue);

					$data = json_decode( $json, TRUE );
					
					foreach($data as $detail)
					{
						if(is_array($detail))
						{
							foreach($detail as $det)
							{
								$Image[0]= $det['image'];
			                    $ProductName[0]=$det['name'];
			                    $ProductPrice[0]=$det['offers']['price'];
			                    $linkBox[0]= $det['url'];
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
									$Content_Base_LazadaSeller = new simple_html_dom();
									$Content_Base_LazadaSeller->load($executeContentSeller);

									foreach($Content_Base_LazadaSeller->find('a.basic-info__name') as $ContentelementSeller) 
									{
										$Seller[0]=$ContentelementSeller->innertext;
									}

									$ResultKeyword=3;

			                        $sql=mysqli_query($conn, "INSERT INTO tblcrawl(ProductLink,ImageLink,ProductName,ProductPrice,Source,Seller) VALUES('{$linkBox[0]}','{$Image[0]}','{$ProductName[0]}','{$ProductPrice[0]}','LAZADA','{$Seller[0]}')");

			                        $TotalResultLazada++;
			                       
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
									$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,LinkChild,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','{$PathLink}','LAZADA','3')");

									if ($sql === FALSE) 
								 	{
			        					throw new Exception(mysqli_error($conn));
			    					}
			    					$isFirstTime=0;
								}
								
								if ($TotalResultLazada==$LazadaLimit) 
								{
									break 5;
								}
								
							  	$resultKeywordPass=0;
							}
						}
					}
					if($isFirstTime==1)
					{
						$LinkValue[0]=str_replace("'","",$LinkValue[0]);
						$LinkCategory[0]=str_replace("'","",$LinkCategory[0]);
						$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,LinkChild,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','{$PathLink}','LAZADA','2')");
						if ($sql === FALSE) 
					 	{
        					throw new Exception(mysqli_error($conn));
    					}
						
					} 
	                  
	            }
		    }
		    else
			{

				$LinkValue[0]=str_replace("'","",$LinkValue[0]);
				$LinkCategory[0]=str_replace("'","",$LinkCategory[0]);
				$sql=mysqli_query($conn, "INSERT INTO tblCategory(CategoryValue,Link,Source,Rate) VALUES('{$LinkValue[0]}','{$LinkCategory[0]}','LAZADA','1')");
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
$html_Lazada->clear(); 
unset($html_Lazada);
?>