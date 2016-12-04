<html>
	<body>
		<% request.getAttribute("message"); %>
		<br/>
		<form action="authenticate" method="POST">
			Mobile Number: <input type="text" name="mobile_number"/>
			<input type="submit" value="Submit"/>
		</form>
	</body>
</html>
