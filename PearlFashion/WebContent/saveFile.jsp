
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save File Form</title>
</head>
<body>
	<form name="saveFileForm" action="ImageUploadServlet" method="post" enctype="multipart/form-data">
		<label for="fileName">Select File  :  </label>
		<input type="file" name="fileName" >
		<input type="submit" value="Save">
	</form>
	<%
	if(null != request.getAttribute("img")){
		String img = (String)request.getAttribute("img");
	%>
		<img src="GetImageServlet" width="200" height="200">
	<%
	}
	%>
</body>
</html>