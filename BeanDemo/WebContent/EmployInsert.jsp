<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="b1" class="com.java.mphasis.beans.EmployInsert" />
<jsp:setProperty property="*" name="b1"/>
<%=b1.addEmploy() %>
</body>
</html>