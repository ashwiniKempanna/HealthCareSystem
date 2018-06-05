<%@ page import="java.sql.*"%>
<%
    if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
	Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
 %>
<% String ihtml="<html><head>";
   ihtml+="<meta http-equiv=\"page-enter\" content=\"blendTrans(duration=1)\">";
   ihtml+="<meta http-equiv=\"Pragma\" content=\"no-cache\">";
   ihtml+="<meta http-equiv=\"expires\" content=\"0\">";
   ihtml+="<link  href=\"cyber.css\" rel=\"stylesheet\">";
   ihtml+="<title>Healthcare Shopping</title>";
   ihtml+="<style>";
   ihtml+=".padd {width:10%;padding-left:8px; }";
   ihtml+=".report {padding:5px; font-family:tahoma; font-weight:bold;font-size:25px; color:black; width:500px; }";
   ihtml+="</style><BR>";
   String buff="";
   String head="";
   String cmd;
    try {
    String based=request.getParameter("based");
	String query=request.getParameter("based");
    System.out.println(query);

    String format=request.getParameter("format");
	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yyyy");
    String msgdate=fmt.format(new java.util.Date()).toString();
	ihtml+="<BR><center><div align=center class=report><h> Reports&nbsp;&nbsp;</h1><font color= black></font></div></center><BR>";
	if(based.equals("date")) cmd="select customer,category,itemname,description,price,quantity,total,odate from sendorder";
	else  cmd="select customer,category,itemname,description,price,quantity,total,odate from sendorder where odate='"+msgdate+"'";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phar","root","root");
	 st=con.createStatement();
    rs=st.executeQuery(cmd);
	head+="<table align=center width=700 cellspacing=1 cellpadding=2 bgcolor=lightslategray><form method=post action=\"user_deletemsgchecked.jsp\">";
	head+="<tr bgcolor=lightslategray><th style='color:aliceblue'>S.no</th><th style='color:aliceblue'>Customer</th><th style='color:aliceblue'>Category</th><th style='color:aliceblue'>Item Name</th><th style='color:aliceblue'>Description</th><th style='color:aliceblue'>Price</th><th style='color:aliceblue'>Quantity</th><th style='color:aliceblue'>Total</th><th style='color:aliceblue'>Date</th></tr>";
	int count=0;
	int qty,tot;
	float price;
	String customer,category,itemname,desc,odate;
	while(rs.next()) {
		count++;
        customer=rs.getString(1);
		category=rs.getString(2);
        itemname=rs.getString(3);
		desc=rs.getString(4);
		price=rs.getFloat(5);
		qty=rs.getInt(6);
		tot=rs.getInt(7);
		odate=rs.getString(8);
		buff+="<TR bgcolor=whitesmoke>";
		buff+="<TD class=padd>"+count+"</td>";
		buff+="<TD class=padd>"+customer+"</td>";
		buff+="<TD class=padd>"+category+"</td>";
		buff+="<TD class=padd>"+itemname+"</td>";
		buff+="<TD class=padd>"+desc+"</td>";
		buff+="<TD class=padd>"+price+"</td>";
		buff+="<TD class=padd>"+qty+"</td>";
		buff+="<TD class=padd>"+tot+"</td>";
		buff+="<TD class=padd>"+odate+"</td>";
		buff+="</TR>";

	}
	if(buff.length()>0)	{
		if(format.equals("excel")) {
		response.setContentType("application/vnd.ms-excel");
		out.println(head+buff+"</table>");
		return;}
		out.println(ihtml);
        out.println("<legend></legend><BR>"+head+buff+"</table><BR>");
	} else  out.println(ihtml+"<center><p>Sorry ! No Records Found To ur Selection.</p></center>");
	} catch(Exception e) {
		String msg=e.getMessage().toString();
		String toprint=msg.substring(msg.lastIndexOf(":"));
		out.println(ihtml+"<center><div class=report><font color=green>Error Occured Due to The"+toprint+"</font></div></center>"); }
%>
<BR><BR><center><a href="javascript:window.print()">Print The Report</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="admin.jsp">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="logout.jsp">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript:history.back()">Back</a></center>
