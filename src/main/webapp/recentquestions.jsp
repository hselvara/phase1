<html>
<head>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/pepper-grinder/jquery-ui.css" media="screen" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript" src="scripts/jquery.ui.core.js"></script>
<script type="text/javascript" src="scripts/jquery.ui.widget.js"></script>
<script src="jquery-2.1.3.js"></script>
<link rel="stylesheet" href="style.css" />
<h1> myquestions.com</h1>
<!--<style>
body {
    background-color: #d0e4fe;
}
h1 {
  left:70%;
  margin-left: 675px;
}
h2 {
  left:50%;
  margin-left: 225px;
}

#header{

    position:relative;
    top:40%;
	bottom:30%;
    left:0%;
}
#login-form {
    background-color: #d0e4fe;
    height: 200px;
    width: 600px;
    margin-right: auto;
    margin-left: auto;
    margin-top: 80px;
    border-top-left-radius: 20px;
    border-top-right-radius: 20px;
    padding: 0px;
    text-align:center;
}

input {
    height: 20px;
    width: 300px;
    border: 1px solid #000;
    margin-top: 10px;
}
#search {

    width: 50%;
	margin-left: 400px;
	margin-right:35px;

}
#centeredmenu {
    margin-top: 5px;
	border-top-right-radius: 20px;
	margin-left: 600px;
	margin-right:35px;

}
#content
{
   background-color: #f2f2f2;
   padding: 20px 10px;
   overflow: auto;
}
#tab-container
{
   float: left;
   margin: 50px 0 0 0;
   width: 126px;
}
#tab-container ul
{
   list-style: none;
   text-align: center;
}
#tab-container ul li
{
   border-top: 1px solid #666;
   border-right: 1px solid #666;
   border-bottom: 1px solid #666;
   border-left: 8px solid #666;
   background-color: #ddd;
   margin: 8px 0;
}
#tab-container ul li a,
#tab-container ul li a:visited
{
   text-decoration: none;
   color: #666;
   display: block;
   padding: 15px 5px;
}
#tab-container ul li:hover
{
   border-left: 8px solid #333;
}
#tab-container ul li a:hover
{
   color: #000;
}
#tab-container ul li.selected
{
   border-right: none;
   background-color: #fff;
   border-left: 8px solid #006699;
}
#main-container
{
   min-height: 400px;
   margin: 0 0 0 125px;
   padding: 20px;
   background-color: #fff;
   border: 1px solid #888;
}

</style>-->
<body>
<div id="placeholder"></div>
<div class="box">
  <div class="container-1">
      <span class="icon"><i class="fa fa-search"></i></span>
      <input type="search" id="search" placeholder="Search..." />
  </div>
</div>


<div id="header">
<h2> Top Questions</h2>
</div>
<div id="templates" style="display: none;">
<table>
<tr><td><ul><li>Questionid</td><td>Noofanswers</td><td>date</td><td>username</td></tr></li> </ul>
</table>
</div>
  <div id="content">
   <div id="tab-container">
      <ul>
	     <li ><a href="display.html">All questions</a></li>
         <li class="selected" ><a href="recentquestions.html">Recent Questions</a></li>
     
      </ul>
   </div>
   <div id="main-container">
   </div>
</div>
<script src="jquery-2.1.3.js"></script>
<script>

  $.getJSON("rest/question", function(data) {
        var output="<table border='1' style='width:100%'>";
        for (var i in data) {
          output+="<tr><td><ul><li>Title:<a href='"+data[i].id+"'>" + data[i].questions + "</a></li><li> Date/Time:" + new Date(data[i].timeval) + "</li><li>Username:" + data[i].username+"</li><li>No of Answers:" + data[i].noans+"</li></ul></td></tr>";
        }
        output+="</table>";
      document.getElementById("main-container").innerHTML=output;
  });



	</script>
</body>
</head>
</html>