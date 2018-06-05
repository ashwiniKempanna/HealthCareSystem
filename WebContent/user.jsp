<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<html>
<head>
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Healthcare Shopping</title>
</head>
<body>
<jsp:include page="user_transactions.jsp" />

</body></html>

