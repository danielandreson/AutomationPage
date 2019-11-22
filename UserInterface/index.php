<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Web Crawler</title>
<style type="text/css">
  /* Full-width input fields */
  input[type=text], input[type=password], select,input[type=number] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
  }
  /* Set a style for all buttons */
  button {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
  }
  /* Add padding to container elements */
  .container {
      padding: 16px;
      width: 60%;
      border-radius: 10px;
      border: 2px solid lightgrey;
      margin: auto;
      margin-top: 2.5%;
      background-color: white;
  }
  /* Clear floats */
  .clearfix::after {
      content: "";
      clear: both;
      display: table;
  }
  /* Change styles for cancel button and signup button on extra small screens */
  @media screen and (max-width: 300px) {
      .cancelbtn, .signupbtn {
         width: 100%;
      }
  }
  body {margin:0;}
  .topnav {
    overflow: hidden;
  }
  .topnav a {
    float: left;
    display: block;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
    font-style: none;
  }
  .topnav .icon {
    display: none;
  }
  @media screen and (max-width: 600px) {
    .topnav a:not(:first-child) {display: none;}
    .topnav a.icon {
      float: right;
      display: block;
    }
    
  }
  @media screen and (max-width: 600px) {
    .topnav.responsive {position: relative;}
    .topnav.responsive .icon {
      position: absolute;
      right: 0;
      top: 0;
    }
    .topnav.responsive a {
      float: none;
      display: block;
      text-align: center;
    }

  }
  .not-active {
     pointer-events: none;
     cursor: default;
     color: black;
  }
  .LogoImg {
      max-width: 25%;
      height: auto;
      width: auto\9; /* ie8 */
      margin-left: 35%;
  }
  .footer {
      position: absolute;
      left: 0;
      bottom: 0;
      height: 40px;
      width: 100%;
      text-align: center;
      background-color: #6d6c6c;
  }
  .image {
    display: block;
    width: 100%;
    height: auto;
  }
  .overlay {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    height: 100%;
    width: 100%;
    opacity: 0;
    transition: .5s ease;
    background-color: #008CBA;
  }
  .container:hover .overlay {
    opacity: 1;
  }
  .text {
    color: white;
    font-size: 20px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
  }
  .containerRef {
    position: relative;
    width: 50%;
  }
  html {
      position: relative;
      min-height: 100%;
  }
  body {
      margin: 0 0 100px;
  }
  .tooltip {

  }
  .tooltip .tooltiptext {
      visibility: hidden;
      width: 120px;
      background-color: black;
      color: #fff;
      text-align: center;
      border-radius: 6px;
      padding: 5px 0;

      /* Position the tooltip */
      position: absolute;
      z-index: 1;
  }
  .tooltip:hover .tooltiptext {
      visibility: visible;
  }
</style>
</head>
<body style=' font-family: Tahoma,Verdana,Segoe,sans-serif; background-image:url(img/BackgroundImage_v2.0.jpg);  background-repeat: no-repeat;  background-size: 100% 100%;'>
  <form action="Search.php" method="post">
    <div class="container">
      <div><img class="LogoImg" src="img/CrawlerLogo.png"></div>
      <div>
        <label><b>Category</b></label>
        <div class="text-center "><input type="text" name="txtCategory" required ></div>
        <label><b>Name</b></label>
        <div class="text-center"><input  type="text" name="txtSearch" required ></div>
        <label><b>Search Type</b></label>
        <div >
          <select name="txtSearchType" required >
            <option value="" disabled selected></option>
            <option value="BFS">BREADTH-FIRST-SEARCH</option>
            <option value="PR">PAGE-RANK</option>
          </select>
        </div>
        <label><b>Total Result</b></label>
        <div class="text-center"><input type="number" name="LimitSearch" min="3" max="99" required></div>
        <div class="text-center"><input id="ShowProgress" value="YES" type="Checkbox" name="ShowProgress" style="margin-bottom: 6px;">Hide Progress</div>  
        <div class="">&nbsp;</div>
        <div class="text-center"><button class="">Search</button></div>
      </div>


      <div class="topnav" id="myTopnav">
        <a href="#" class="not-active" disabled>References</a> 
        
        <a href="http://www.bhinneka.com/">
          <div class="tooltip"><img src="img/bl.png" style="width: 30px; height: 30px;">
            <span class="tooltiptext">Bhinneka</span>
          </div>
        </a> 
        
        <a href="http://www.tokopedia.com/" >
          <div class="tooltip"><img src="img/tp.png" style="width: 30px; height: 30px;">
             <span class="tooltiptext">Tokopedia</span>
          </div>
        </a>
        <a href="http://www.lazada.com/">
          <div class="tooltip"><img src="img/lz.png" style="width: 30px; height: 30px;">
            <span class="tooltiptext">Lazada</span>
          </div>
        </a>
        <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
      </div> 
    </div>
  </form>
  <div class="footer">
    <div  style="color:white; margin-top: 10px;"><b>Price Comparison - UIB, SI</b></div>
  </div> 
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
</body>

</html>