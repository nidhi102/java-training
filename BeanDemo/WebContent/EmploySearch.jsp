<%@page import="com.java.mphasis.beans.Employ"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="b1" class="com.java.mphasis.beans.EmploySearch"/>
<jsp:setProperty property="*" name="b1"/>
<%
	Employ employ = b1.searchEmploy();
	if (employ!=null) {
		out.println(employ);
	} else {
		out.println("Not Found...");
	}
%>
</body>
</html>