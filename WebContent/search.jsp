<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Healthcare Shopping</title>
</head><body><jsp:include page="user_transactions.jsp" />
<table width=780 cellspacing=0 cellpadding=0 align=center><form action='searchproduct.jsp' method=post><tr>
<TD align=center><BR>Search Products To Buy&nbsp;:&nbsp;<input name=quest>&nbsp;<button type=submit><u>P</u>roceed</button></td></tr></form></table>
<CENTER><TABLE WIDTH=700 BORDER=0 ALIGN=CENTER>
	<TR>
		<TD VALIGN=TOP>
		<BR>
		Use this search engine to find Shopping Bag products by name or description, or price. Enter any words or phrases 
		that might identify products you are looking for, then press ENTER. Pressing ENTER with nothing in the text 
		field reveals all available products. Case does not matter.
		<BR><BR>
		Examples include:
		<UL>
		<LI>Entering the string <I>Chain</I> returns the product listing for <B>Chainsaw</B>.
			<BR><BR>
		<LI>Entering the string <I>great</I> returns the product listings for <B>Washer</B>, <B>Shrimp</B>, and <B>Bongos</B> because 
			the word <I>great</I> is in all of those product descriptons.
			<BR><BR>
		<LI>Entering the string <I>1.15</I> returns the product listing for <B>Hairdryer</B>, <B>Lighthouse</B>, <B>Necktie</B>
			<B>Fries</B>, and <B>Cycle</B> because the price of each contains <I>1.15</I>.
		</UL>
		<BR><BR>
		Click on any of the product names listed in the search results to view that product image and details.	
	</TR>
</TABLE>
</body></html>
