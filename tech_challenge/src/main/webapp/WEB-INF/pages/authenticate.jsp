<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script type="text/javascript">
	  function checkCode()
	  {
	     var userInput = document.getElementById("user_code").value;
	     var generatedCode = "${auth_code}";
	     
	     if (userInput === generatedCode) {
	    	 alert("Success");	 
	     } else {
	    	 window.location.href = "${pageContext.request.contextPath}";
	     }
	     
	     
	     
	     //document.getElementById("auth_form").preventDefault();
	  }
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Submit Authentication</title>
</head>
<body>
	<!-- Fixed navbar -->
    <nav class="navbar navbar-inverse">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	        <span class="sr-only">Toggle navigation</span>
	      </button>
	      <a class="navbar-brand" href="${pageContext.request.contextPath}">Fonix</a>
	    </div>
	    <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
	<div class="container">
		<div class="page-header">Please input the code sent to <%= request.getParameter("mobile_number") %></div>
		<form id="auth_form" class="form-inline">
			<div class="form-group">
				<label for="user_code">Code: </label>
				<input type="text" name="user_code" id="user_code" class="form-control"/>
			<button type="button" onclick="checkCode()">Submit</button>
			</div>
		</form>
	</div>
</body>
</html>