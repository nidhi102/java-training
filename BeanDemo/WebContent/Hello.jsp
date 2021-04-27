<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="b1" class="com.java.mphasis.beans.Hello" scope="application" />
<jsp:setProperty property="greeting" name="b1" value="Good Evening..."/>
Default Value : 
<jsp:getProperty property="greeting" name="b1"/>

</body>
</html>