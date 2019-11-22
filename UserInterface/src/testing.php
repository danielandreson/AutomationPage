<?php

$output = shell_exec('taskkill /F /IM "CefSharp.exe"');
$answer = exec('..\c#\CefSharp.exe CRAWLPAGE www.google.com');
$output = shell_exec('taskkill /F /IM "CefSharp.exe"');
// echo exec("notepad.exe");
echo "<script>alert('Sukses');</script>";
?> 