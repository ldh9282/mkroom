<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<a href="${pageContext.request.contextPath }/onepage">OnePage-index.html</a>
<a href="${pageContext.request.contextPath }/niceadmin">niceadmin-index.html</a>
<a href="${pageContext.request.contextPath }/fileupload">fileupload</a>
</body>
</html>
