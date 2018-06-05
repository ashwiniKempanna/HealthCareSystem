<%@ page import="java.sql.*"%>
<%
    if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
 %>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Healthcare Shopping</title>
</head><body><jsp:include page="admin_transactions.jsp" />

<BR>
<fieldset>
<legend>Reports Terminal</legend><BR>
<table cellspacing=0 cellpadding=5 align=center border=0><form action="getreports.jsp" onsubmit="return checkSubmit()">
<Tr><td align=right>Reports Based On:</td><td><select name=based onchange="getCombo(this)">
<option value="">Select Reports</option>
<option value="daily">Daily Sales Reports</option>
<option value="date">Get all Reports </option>
</select></td></tr>
<tr><TD align=right id=lable align=right><Td align=right id=base></td></tr>
<Tr><TD align=right>View Reports in:</td><Td><select name=format>
<option value="excel">Microsoft Excel
<option value="html">HTML Format</select></td></tr>
<tr><Td align=center colspan=2><BR><button type=submit accesskey="P"><u>P</u>roceed</button>
&nbsp;&nbsp;<button type=submit accesskey="R"><u>R</u>eset</button>
</td></tr></form></table><BR></fieldset>
</body></html>
