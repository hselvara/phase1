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
<body>


<div id="userlogin">
<button onclick="imageClick('login.jsp')"">Login</button>
<button onclick="imageClick('signup.jsp')">New User? Click Here for Register</button>

</div>


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

</div>

</div>
  <div id="content">
   <div id="tab-container">
      <ul>
	     <li class="selected" ><a href="display.jsp">All questions</a></li>
         <li  ><a href="recentquestions.jsp">Recent Questions</a></li>
     
      </ul>
   </div>
   <div id="main-container">
   </div>
</div>
<div id="myDiv"></div>

<script>

$(document).ready(function(){
	//http://localhost:8080/test/rest/question
  $.getJSON("http://localhost:8080/test/rest/question", function(data) {
        var output=" <table border='2' style='width:100%' >";
        for (var i in data) {
             output+="<tr><td><ul><li>Title:<a id='mylink' href=rest/questions/"+data[i].id+">" + data[i].questions + "</a></li><li> Date/Time:" + new Date(data[i].timeval) + "</li><li>Username:" + data[i].username+"</li><li>No of Answers:" + data[i].noans+"</li></ul></td></tr>";
        }

        output+="</table>";
      document.getElementById("main-container").innerHTML=output;
  });

 


});

$("#mylink").click(function() {
                    $("#myDiv").load("displayQuestion.jsp");
                });

//$(document).ready(function(){
//  $.getJSON('modifiedinputfile.json', function(data) {
//	  alert(data[0].title);
//        var output="<table border='1' style='width:100%'>";
//		
//        //for (var i in data) {
//         //    output+="<tr><td><ul><li>Title:<a href='"+data[0].Questionid+"'>" + data.users[i].title + "</a></li><li> Date/Time:" + data.users[i].postedon + "</li><li>Username:" + data.users[i].Username+"</li></ul></td></tr>";
//        //}
//        //output+="</table>";
//      document.getElementById("main-container").innerHTML=output;
//  });
//  });
function imageClick(url) {
    window.location = url;
}




	</script>
</body>
</head>
</html>