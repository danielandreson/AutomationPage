<?php
$dir = "https://shopee.co.id/";
foreach(scandir($dir) as $file){
  print '<a href="'.$dir.$file.'">'.$file.'</a><br>';
}
?>