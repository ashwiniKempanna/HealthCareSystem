<%@ page import="java.sql.*"%>
<%if(session.getValue("login")==null) response.sendRedirect("cyber.jsp?invalidsession");%>
<%
	Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
  try{
	  Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phar","root","root");
		
  String cat=request.getParameter("category");
  String iname=request.getParameter("name");
  String desc=request.getParameter("desc");
  String date=request.getParameter("date");
  float price=Float.parseFloat(request.getParameter("cost"));
  String query="insert into product values(null,?,?,?,?,?)";
  sst=con.prepareStatement(query);
  
  sst.setString(1,cat);
  sst.setString(2,iname);
  sst.setString(3,desc);
  sst.setString(5,date);
  sst.setFloat(4,price);
  int eff=sst.executeUpdate();
  if(eff>0) out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=gray><center><h1><font face=tahoma color=ivory>Item Added to Inventory Successfully .<BR><BR></h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
  else out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=gray><Center><h1><font face=tahoma color=ivory>Failed to Add the Item to the Inventory.<BR><BR>Please Enter Proper Data .</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
  } catch(Exception e) {
	  String msgs=e.getMessage().toString().toLowerCase();
    if(msgs.indexOf("unique")!=-1) out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=gray><center><p><font face=tahoma color=maroon>Transaction Failed While Adding Ur Item to Inventory.Due To Duplication.<BR>Item Already Exist.Please Choose Another Item</p><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");    
    else out.println("<link rel=stylesheet href='cyber.css'><body bgcolor=gray><center><h1><font face=tahoma color=ivory>Transaction Failed While Adding Ur Item to Inventory.Due To Error:<BR>"+e+"</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
  }
  %>
<html xmlns=""><head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link class="catg" href="cyber.css" rel="stylesheet">
<title>Online Medical Booking Store</title>


