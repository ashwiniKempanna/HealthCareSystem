<link href="cyber.css" rel="stylesheet">
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
String table=request.getParameter("category");
String[] items=request.getParameterValues("item");
if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalid");	
try	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phar","root","root");
	Statement stmt=con.createStatement();
	for(int i=0;i<items.length;i++){ //stmt.executeUpdate("delete from "+table+" where itemname='"+items[i]+"'");
   System.out.println(items[i]);
stmt.executeUpdate("delete from product  where PRODUCTNAME='"+items[i]+"'");

response.sendRedirect("admin_deleteitem.jsp?category="+table);
	}
} catch(Exception e) {
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>
<center><h4><a href="javascript:history.back()">Continue</a></h4>
