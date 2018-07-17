<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
<ul>
		<li>Mobile</li>
		<li>Dress</li>
		<li>Beauty</li>
		<li>Health</li>
		<li>Laptop</li>
	</ul>
	<a href="index.html">Home</a>
	
	<%@ page import="java.io.*;"%>
	<%
		File file = new File("E://clickevent.txt");
		BufferedWriter bw = null;
		FileWriter fw = null;
		fw = new FileWriter(file.getAbsoluteFile(), true);
		bw = new BufferedWriter(fw);
		bw.write("\n" + request.getRequestURL().toString() + "    " + request.getRemoteAddr());
		bw.close();
	%>
</body>
</html>