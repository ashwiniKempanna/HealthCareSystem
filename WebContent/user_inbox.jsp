<%@ page import="java.sql.*"%>
<%
    if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");
	Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
 %>
 <script>
 function getMessage(val) {
 styles="<link href='cyber.css' rel='stylesheet'><title>Message</title>"
 nwin=open("","","scrollbars=yes,width=500 height=300,left=120,top=200");
 nwin.document.write(styles+"<p>"+document.getElementById('msgs'+val).innerHTML+"</p>");
 nwin.document.close();
 }
 </script>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Healthcare Shopping</title>
</head><body><jsp:include page="user_transactions.jsp" />
<BR>
<br>

<%  String buff="";
    String head="";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phar","root","root");
		st=con.createStatement();
	String cmd="Select * from user_inbox where user_name='"+session.getValue("login")+"'";
    rs=st.executeQuery(cmd);
	head+="<table align=center width=600 cellspacing=1 cellpadding=2 bgcolor=lightslategray><form method=post action=\"user_deletemsgchecked.jsp\">";
	head+="<tr bgcolor=lightslategray><th style='color:aliceblue'>S.no</th><th style='color:aliceblue'>From</th><th style='color:aliceblue'>Subject</th><th style='color:aliceblue'>Date</th></tr>";
	int count=0;
	boolean rec=false;
	while(rs.next()) {
        rec=true;
		count++;
		int id=rs.getInt("mid");
		String from=rs.getString("msg_from");
		String sub=rs.getString("msg_subject");
        String data=rs.getString("msg_data");
		sub=(sub!=null)?sub:"[&nbsp;None&nbsp;]";
		data=(data!=null)?data:"[&nbsp;No Message is Available&nbsp;]";
		//java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yyyy");
        String msgdate=rs.getString("msg_date");
		buff+="<TR bgcolor=whitesmoke><TD>"+count+"</td>";
		buff+="<td><input name='from' value='"+id+"' type=checkbox class=check>"+from+"</td>";
		buff+="<Td><div id='msgs"+count+"' style='display:none'>"+data+"</div><a href='javascript:getMessage("+count+")'>"+sub+"</a></td>";
		buff+="<TD>"+msgdate+"</td></tr>";
	}
	if(buff.length()>0)	out.println(head+buff+"</table>");
	else out.println("<link href='cyber.css' rel='stylesheet'><center><p>No Messages Found.Your Inbox Terminal is Empty</p></center>");
    }   catch(Exception e) { out.println("No Items Found"+e); }
%>
<table align=center width=600>
<tr><Td align=center><button type=submit accesskey="D"><u>D</u>elete</button>
&nbsp;&nbsp;<button type=submit accesskey="R"><u>R</u>eset</button>
</td></tr></table><BR>
</body></html>