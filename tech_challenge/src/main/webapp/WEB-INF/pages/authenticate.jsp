<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit Authentication</title>
</head>
<body>
	Please input the code sent to <%= request.getParameter("mobile_number") %> code is ${auth_code}
	<br/>
	<form id="auth_form">
		Code: <input type="text" name="user_code" id="user_code"/>
		<button type="button" onclick="checkCode()">Submit</button>
	</form>
</body>
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

<!-- var generatedCode = "<%= request.getParameter("auth_code") %>";  -->
</html>