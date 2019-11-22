<?php	
	error_reporting(0);
	if(!session_id()) session_start();
	
	if(isset($_POST['txtCategory']))
		$_SESSION['Category']=$_POST['txtCategory'];
	if(isset($_POST['txtSearch']))
		$_SESSION['Keyword']=$_POST['txtSearch'];

?>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	body {margin:0;}
	.topnav {
	overflow: hidden;
	margin-left: 10%;
	height: auto;
	}
	.topnav a {
	float: left;
	display: block;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
	font-style: none;
	padding-bottom: 0px;
	}
	.topnav .icon {
	display: none;
	}
	@media screen and (max-width: 1200px) {
		.topnav a{display: none;}
		.topnav a.icon {
			float: left;
	  		display: block;
		}
	}
	@media screen and (max-width: 1200px) {
	.topnav.responsive {position: relative; margin-left: 0%;}
		.topnav.responsive .icon {
		  position: absolute;
		  right: 0;
		  top: 0;
		}
		.topnav.responsive a {
		  float: none;
		  display: block;
		  text-align: center;
		  float: none;
		}
	}
	.not-active {
	 cursor: default;
	 color:white;
	}
	.LogoImg {
	  height: auto;
	  margin: auto;
	  width: 50%;
	}
	input[type=text], input[type=password], select,input[type=number] {
	  width: 100%;
	  padding: 10px 20px;
	  margin-top: 0px;
	  display: inline-block;
	  border: 1px solid #ccc;
	  box-sizing: border-box;
	}
	button {
	  background-color: #4CAF50;
	  color: white;
	  padding: 14px 20px;
	  border: none;
	  cursor: pointer;
	  width: 100%;
	}
	.container {
	  width: 100%;
	  height: auto;
	  background-color: rgba(55, 61, 73, 0.976);

	}
  	a:link {
    color: white;
	}
	a:visited {
	    color: white;
	}
	a:hover {
	    color: white;
	}
	a:active {
	    color: white;
	}
.Gridcontainer {
  list-style:none;
  margin: 0;
  width: 100%;
  padding: 0;
}
@media (min-width: 100px) {
		.item {	
		  padding: 5px;
		  width: 200px;
		  height: 280px;
		  margin-left: 40px;
		  
		  color: white;
		  text-align: center;
		}
	}
	@media (min-width: 360px) {
		.item {	
		  padding: 5px;
		  width: 200px;
		  height: 280px;
		  margin-left: 60px;
		  
		  color: white;
		  text-align: center;
		}
	}
@media (min-width: 1000px) {
		.item {	
  padding: 5px;
  width: 200px;
  height: 280px;
  margin-left: 60px;
  
  color: white;
  text-align: center;
}
	}


/*float layout*/
.float {
  max-width: 1200px;
  margin: 0 auto;
}
.float:after {
  content: ".";
  display: block;
  height: 0;
  clear: both;
  visibility: hidden;
}
.float-item {
  float: left;
}


/*inline-block*/
.inline-b {
  max-width:1200px;
  margin:0 auto;
}
.inline-b-item {
  display: inline-block;
}

/*Flexbox*/
.flex {
  padding: 0;
  margin: 0;
  list-style: none;
  
  display: -webkit-box;
  display: -moz-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  
  -webkit-flex-flow: row wrap;
  justify-content: space-around;
}
/* Start Popup Window CSS */



#popup{
padding-top:30px;
}
.form{
border-radius:2px;
padding:20px 30px;
font-size:12px;
width:500px;
margin:20px 250px 0 35px;
float:left;
}
.inputtxt{
width:100%;

}

#contactdiv{
opacity:0.92;
position: absolute;
top: 0px;
left: 0px;
height: 100%;
width: 100%;
background: #000;
display: none;
z-index:1000;
}


#contact{
width:450px;
margin:0px;
background-color:white;
font-family: 'Fauna One', serif;
position: relative;
border: 5px solid rgb(90, 158, 181);
}

#contact{
left: 50%;
top: 50%;
margin-left:-250px;
margin-top:-200px;
}

/* End Pop Up Window */
</style>
<title>System Crawler</title>
</head>
<body style=' font-family: Tahoma,Verdana,Segoe,sans-serif; '>
	<!-- Hidden Page -->
	<div id="contactdiv">
		<form class="form" action="" method="POST" id="contact">
			<h3>Feedback</h3>
			<div class="row">
				<input type="hidden" name="MethodFunc" value="INSERTCOMMENT">
				<div class="col-md-4"><label >Name*</label></div>
				<div class="col-md-8"><input class="inputtxt" type="text" id="name" name="name" placeholder="Name" /></div>

				<div class="col-md-4"><label >Address*</label></div>
				<div class="col-md-8"><input class="inputtxt" type="text" id="address" name="address" placeholder="Address" /></div>

				<div class="col-md-4"><label >Education*</label></div>
				<div class="col-md-8"><input class="inputtxt" type="text" id="education" name="education" placeholder="Education"  /></div>

				<div class="col-md-4"><label >Note*</label></div>
				<div class="col-md-8"><input class="inputtxt" type="text" id="note" name="note" placeholder="Note"  /></div>

				<div class="col-md-4"><label >Rate Quality*</label></div>
				<div class="col-md-7"><input class="inputtxt"  type="number" min="1" max="5" id="rateQuality" name="rateQuality" placeholder="Rate Quality"/></div>
				<div class="col-md-1" style="text-align: left; padding-left: 0; margin-left:0;"><label >1-5</label></div>

				<div class="col-md-4"><label >Rate Fresh*</label></div>
				<div class="col-md-7"><input class="inputtxt"  type="number" min="1" max="5" id="rateFresh" name="rateFresh" placeholder="Rate Fresh" /></div>
				<div class="col-md-1"  style="text-align: left; padding-left: 0; margin-left:0;"><label >1-5</label></div>

				<div class="col-md-4"><label >Rate Perform*</label></div>
				<div class="col-md-7"><input class="inputtxt" type="number" min="1" max="5" id="ratePerform" name="ratePerform" placeholder="Rate Perform" /></div>
				<div class="col-md-1"  style="text-align: left; padding-left: 0; margin-left:0;"><label >1-5</label></div>

				<div class="col-md-4"><label >Rate Page Corresponding*</label></div>
				<div class="col-md-7"><input class="inputtxt" type="number" min="1" max="5" id="ratePageCorresponding" name="ratePageCorresponding" placeholder="Rate Page Corresponding"/></div>
				<div class="col-md-1"  style="text-align: left; padding-left: 0; margin-left:0;"><label >1-5</label></div>
			</div>
			<input type="button" class="btn btn-primary" id="send" value="Send"/>
			<input type="button" class="btn btn-danger" onclick="" id="cancel" value="Cancel"/>
			<br/>
		</form>
	</div>	
	<!-- End Hidden Page -->
	<div class="container">
	<form method="POST" action="Search.php?page=SortPrice">
		<div class="topnav" id="myTopnav">
			
			<a href="#" class="not-active" style="margin-top: 8px;"> 
				<label><b>Price Range :</b></label>
			</a>
			<a href="#" class="not-active"> 
				<input type="number" name="PriceMinimal" min="0" >
			</a>
			<a href="#" class="not-active" style="margin-top: 8px; "> 
				-
			</a>
			<a href="#" class="not-active"> 
				<input type="number" name="PriceMaximal" min="0">
			</a>
			<a href="#" class="not-active"> 
				<button class="btn btn-primary" style="padding-top: 8px;">Sort</button>
			</a>
				<a href="index.php" style="margin-top: 15px;">
					<label style="font-size: 10pt; cursor: pointer; text-decoration:underline;" >Go With New Search?</label>
				</a>
				<a href="#" class="not-active" disabled style="margin-top: 15px;"><label style="font-size: 10pt">Or</label></a>
				<a href="https://goo.gl/forms/xTgZlC4LPYpkJopW2" id="onclick" style="margin-top: 15px;">
					<label style="font-size: 10pt;  cursor: pointer; text-decoration:underline;">Give Feedback?</label>
				</a>
				<a href="javascript:void(0);" style="font-size:15px; margin-top: 8px;" class="icon" onclick="myFunction()">&#9776;</a>
		</div>
		<script>
			function myFunction() {
			var x = document.getElementById("myTopnav");
  				if (x.className === "topnav") {
    				x.className += " responsive";
  				} else {
      				x.className = "topnav";
  				}
			}
		</script>
		</form>
		<div style="font-size: 13px; background-color: #37C0FB; margin-top: 0px; color: white;font-weight: bold; padding-top: 5px; padding-bottom: 5px; text-align: center; padding-right: 7%;">Home > Sort Price > 
		<?php 
			echo $_SESSION['Category'];
			echo ' > '.$_SESSION['Keyword'];
		?>
	</div>
	</div>

	
	<div class="containerContent">
		<!--PHP START -->
		<?php
		  if(isset($_GET['page']))
		  {
		    $page = $_GET['page'] . ".php";
			include ($page);
		  }
		  else
		  {
			include "LoadData.php";
		  }
		?>
		<!--PHP END -->
	</div>

</body>

</html>