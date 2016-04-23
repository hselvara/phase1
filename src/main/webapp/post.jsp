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
#search {

    width: 100%;
	margin-right:5px;

}
#title{

	margin-left: 450px;
	margin-right:25px;

}

#postqu{

	margin-left: 250px;
	margin-right:25px;

}

</style>-->
<script>
</script>
<body>
<table>
<tr>
<td class="ask-title-cell-key">
<label for="title">Title</label></td>
<td>
<input type="text" id="title" name="Title" rows="4" cols="50">
<!--<input type="submit" value="Submit">-->
</td>

</tr>
<tr>
<td>
<label for="Des" id="des">Description</label></td>
</td>
<td>
<textarea id="description" rows="12" cols="50">
</textarea>
</td>

</tr>
<tr>
<td>

</td>
</tr>
</table>
<input name="regbutton" id="postqu" type="button" class="button" value="Post Question" />
<script src="jquery-2.1.3.js"></script>
<script>




    $("#postqu").click(function(){   
	/* $.post("http://localhost:8075/login",{Authorization:function make_base_auth(user, password) {
  var tok = user + ':' + password;
  var hash = btoa(tok);
  return "Basic " + hash;
}},  function(data, status){
        alert("Data: " + data + "\nStatus: " + status);
    });*/
 $.ajax({
         type: "post",
         url: "http:www.google.com",
		 contentType: "text/plain",
         headers:{
		 Authorization: "Basic dXNlcjpwYXNz",
		 },
         success: function () {
         alert("success");
     },
        dataType: 'json',
		success: function (data) {
        console.info(data);
    }
        });
	});
</body>
</head>
</html>