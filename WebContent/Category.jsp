<%@ page import="java.sql.*"%>
<%!
String status=null;
%>

<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
//String status=request.getAttribute("status").toString();
//System.out.println("----------"+status);


status=request.getParameter("status");

System.out.println(status+"------"+status);
%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Healthcare Shopping</title>
<body>
<form action="./Category" >
<center>

<table width=780 cellspacing=0 cellpadding=0 border=0 align=center> 
<tr><td><table width="780" cellspacing="0" cellpadding="0" border="0" align="center">
  <tr>
    <td><h1><font color="black" style="font-size: xx-large;">
      <center>
       PHAR(MA)<sup>2</sup>RT
      </center>
    </font></h1></td>
  </tr>
</table></td></tr></table>
<Script src="hcfl.js"></script><BR>
<TABLE ALIGN=CENTER BORDER=0 align=center width=780 oncontextmenu="return false" cellspacing=0 cellpadding=0>
	<TR>
		<TD nowrap align=center>
<A class="catg" href="Category.jsp">AddCategory<A>
<A class="catg" href="CategoryUPDEL.jsp">UpdateCategory<A>
		<A class="catg" href="addproduct.jsp">Add<A>
		<A class="catg" href="modifyproduct.jsp">Modify<A>
		<A class="catg" href="deleteproduct.jsp">Delete<A>
		<!--<A class="catg" href="films.jsp">Films</A>-->
		<A class="catg" href="reports.jsp">Reports<A>
		<A class="catg" href="deleteuser.jsp">Delete User<A>
		<A class="catg" href="admin_inbox.jsp">Inbox<A>
		<A class="catg" href="admin_message.jsp">Reply<A>
		</td>
	</TR>
</TABLE>

<table>
<tr>
<th>
<%
if(status!=null)
out.println(status);
%>
</th>
</table>
<table>
<tr>
<th></th>
</tr>
<br><br>
 <center><h3 style="color: black; text-decoration: underline; ">Add Category</h3></center><br><br>
</table>
<table>
<tr>
<th><br><br><br></th>
</tr>
<tr>
<th>CategoryName</th>
<td><input type="text" name="category"></td>
</tr>
<tr>
<th><br><br></th>
<td></td>
</tr>
<tr>
<th colspan=2>
<input style=" background-color:#52a7da; " type="submit" name="add" value="Add">
<input style=" background-color:#52a7da; " type="reset" name="reset" value="Clear">
</th>
</tr>
</table>
</center>

</form>
</body>
</html>