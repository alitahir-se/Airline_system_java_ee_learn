<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>World Adventure Airlines</title>

<link rel="stylesheet" href="resources/css/normalize.css" />
<link rel="stylesheet" href="resources/css/theme.css" />

</head>
<body>

	<div class="container">

		<div class="title">Add a passenger</div>

		<%
			if (request.getAttribute("errors") != null) {
		%>
		<fieldset>
			<legend>Errors</legend>
			<ul>
				<%
					if (request.getAttribute("firstname_error") != null) {
				%>

				<li>First name error</li>

				<%
					}
				%>

				<%
					if (request.getAttribute("lastname_error") != null) {
				%>

				<li>Last name error</li>


				<%
					}
				%>

				<%
					if (request.getAttribute("date_format_error") != null) {
				%>

				<li>Date of birth invalid</li>

				<%
					}
				%>


			</ul>

		</fieldset>

		<%
			}
		%>

		<legend align="center">Passenger details</legend>

		<form action="AddPassenger" method="post">

			<div class="inputField">
				<label for="first-name" class="inputLabel">First name: </label> <input
					name="first-name" type="text" value="<%= request.getAttribute("first_name")%>" ></input>
			</div>

			<br />
			<div class="inputField">
				<label for="last-name" class="inputLabel">Last name: </label> <input
					name="last-name" type="text" value="<%= request.getAttribute("last_name")%>" ></input>
			</div>

			<br />
			<div class="inputField">
				<label for="dob" class="inputLabel">Date of birth: </label> <input
					name="dob" type="text" value="<%= request.getAttribute("dob")%>" ></input>
			</div>

			<br />


			<div class="inputField">
				<label for="first-name" class="inputLabel">Gender: </label> <select
					name="gender">
					<option value="Male">Male</option>
					<option value="Female">Female</option>
				</select>
			</div>



			<div class="inputField" id="submitField">
				<input id="submitBtn" type="submit" value="Add new passenger"></input>
			</div>


		</form>




	</div>
</body>
</html>