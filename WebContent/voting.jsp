<%@ page import="java.sql.*"%>
<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Healthcare Shopping</title>
</head><body><jsp:include page="user_transactions.jsp" />
<%
    Connection con=null;
	PreparedStatement stmt=null;
	Statement st=null;
	ResultSet rs1=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phar","root","root");
		String banner[]=request.getParameterValues("banner");
		String language[]=request.getParameterValues("language");
		st=con.createStatement();
    	stmt=con.prepareStatement("insert into topfilms values(?,?,?,?)");
		int vote=0;
		String fname;
		String getvote;
		for(int i=0;i<banner.length;i++) {
            fname=(request.getParameter("film"+(i+1))!=null)?request.getParameter("film"+(i+1)):"nothing";			
			if(!fname.equals("nothing")) {
            rs1=st.executeQuery("select * from topfilms where name='"+fname+"'");
			while(rs1.next()) vote++;
            stmt.setString(1,banner[i]);
			stmt.setString(2,fname);
			stmt.setString(3,language[i]);
			stmt.setInt(4,vote);
      		int rss=stmt.executeUpdate();
			}
		}	response.sendRedirect("entertainment.jsp"); 
	 } catch(Exception e) { 
			out.println("<p>Error Occured! While Processing Ur Transaction.<BR>"+e+"</p><br><br><center><a href=\"voting.jsp\">Continue</a>&nbsp;&nbsp;<a href=\"cyber.jsp\" target=\"_parent\">Home</a>");
    	}  
%>		
</body></html>
