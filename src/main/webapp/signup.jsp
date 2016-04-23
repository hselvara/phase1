<html>
<head>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/pepper-grinder/jquery-ui.css" media="screen" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript" src="scripts/jquery.ui.core.js"></script>
<script type="text/javascript" src="scripts/jquery.ui.widget.js"></script>
<script src="scripts/jquery-2.1.3.js"></script>
<link rel="stylesheet" href="style.css" />

<script>
$(document).ready(function() {
$('#submitbutton').click(function(event) {       

	//Get the data from all the fields
    var username = $("#username").val();
    var password = $("#password").val();
    var firstname = $("#firstname").val();
    var lastname = $("#lastname").val();
    var email = $("#email").val();

    /*$.post('http://localhost:8075/signup', { 	username: "username.val()", 
    											password: "password.val()", 
    											firstname: "firstname.val()",
    											lastname: "lastname.val()",
    											email: "email.val()"}, 
    											function () {
            $('.success_msg').append("Signup successful").fadeIn();
        });
        event.preventDefault();
    }); */
    
    $.post('http://localhost:8075/login', {username: username, 
		password: password}, function () {
            $('.success_msg').append("Signup successful").fadeIn();
        });
        event.preventDefault();

});
});
</script>
</head>
<body>
	<div id="container">
		<h1>iAsk Registration</h1>
		<form action="" method="post" id="customtheme">
			<p>
				<label for="first name">First Name</label>
				<input type="text" name="firstname" id="firstname" />
			</p>
			
			<p>
				<label for="last name">Last Name</label>
				<input type="text" name="lastname" id="lastname" />
			</p>
			
			<p>
				<label for="username">Username</label>
				<input type="text" name="username" id="username" />
			</p>
			
			<p>
				<label for="password">Password</label>
				<input type="text" name="password" id="password" />
			</p>

			<p>
				<label for="email">Email</label>
				<input type="text" name="email" id="email" />
			</p>
			
			<p>
				<input type="button" name="submit" value="Submit" id="submitbutton"/>
			</p>
		</form>
	</div>
</body>
</html>