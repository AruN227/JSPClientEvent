<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
		<h1>Data</h1>
	</center>
	<ul>
		<li><p>
				<b>First Name:</b>
				<%=request.getParameter("first_name")%></p></li>
		<li><p>
				<b>Last Name:</b><%=request.getParameter("last_name")%></p></li>
	</ul>
	<a href="online.jsp">Online store</a>
	<h2>JSP URI, URL, Context</h2>
	Request Context Path:
	<%=request.getContextPath()%><br /> 
	Request URI:
	<%=request.getRequestURI()%><br /> 
	Request URL:
	<%=request.getRequestURL()%><br /> 
	Request Content Type :
	<%=request.getContentType()%><br />

	<%@ page import="java.io.*;"%>
	<%
		File file = new File("E://clickevent.txt");
		BufferedWriter bw = null;
		FileWriter fw = null;
		fw = new FileWriter(file.getAbsoluteFile(), true);
		bw = new BufferedWriter(fw);
		bw.write("\n" + request.getRequestURL().toString() + "\n");
		bw.close();
	%>
</body>
</html>