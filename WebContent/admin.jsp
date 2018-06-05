<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Healthcare Shopping</title>
</head><body><jsp:include page="admin_transactions.jsp" /><BR>

</body></html>
