<%@ page import="java.sql.*"%>

<%@ page import="java.util.*"%>
<jsp:useBean id="cat" class="bean.CategoryInsert" scope="request"></jsp:useBean>
<%
Vector v=cat.categoryDetails();
%>
<html>
<head>
<meta http-equiv="page-enter" content="blendTrans(duration=1)">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link href="" rel="stylesheet">
<title>HealthCare Shopping</title>
	</script>
	<!-- Font-Awesome-CSS -->
		<link href="assests/css/font-awesome.css" rel="stylesheet">
	<!--// Font-Awesome-CSS -->
	<!-- Required Css -->
		<link href="assests/css/style.css" rel='stylesheet' type='text/css' />
	<!--// Required Css -->
	<!--fonts-->
	<link href="assests//fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">
	<!--//fonts-->
<style>
	h3 {
	font-size: 65px;
	text-transform: capitalize;
	color: #fff;
	letter-spacing: 7px;
	margin-top:0;
	margin-left:2%;
	font-weight: 400;
	text-align: center;
	font-family: 'Montserrat', sans-serif;
}</style>	
</head><body>

<script src="cyber.js"></script><BR>

<form action="search_products.jsp"><TR><TD><h6 style="color: white; font-family: cursive;">Search Products To Buy:</h6>&nbsp;:&nbsp;<input name=search >&nbsp;&nbsp;<p style="color: white;">in</p>
&nbsp;&nbsp;<select name=category>
<%
for(int i=0;i<v.size();i++)
{
%>
<option><%=v.get(i)%></option>

<%
}	
%>

</select><br><br>&nbsp;&nbsp;<button type=submit>Proceed</button>
</TR></form></TABLE>


<!--background-->
	<h3>Login Form</h3>
	
	<!-- Main-Content -->
	<div class="main-w3layouts-form">
		
		<!-- main-w3layouts-form -->
		<form action="login.jsp" method="post">
			<div class="fields-w3-agileits">
				<span class="fa fa-user" aria-hidden="true"></span>
				<input type="text" name="userid" required="" placeholder="Username" />
			</div>
			<div class="fields-w3-agileits">
				<span class="fa fa-key" aria-hidden="true"></span>
				<input type="password" name="pass" required="" placeholder="Password" />
			</div>
			<div class="remember-section-wthree">
				<ul>
					<li>
						<label class="anim">
							<input class=check type=checkbox name=admin value=admin><span>Login As an Administrator</span>
						</label>
					</li>
					<li> <a href="forgot.jsp">Forgot password?</a> </li>
				</ul>
				<div class="clear"> </div>
			</div>
			<input type="submit" value="Login" />
		</form>
		<!--// main-w3layouts-form -->
		
	</div>
	<!--// Main-Content-->
	
	<!--//background-->

<script>if(location.search.indexOf("invalid")!=-1) document.getElementById('expire').innerHTML="<font color=maroon>Invalid User Name and Password&nbsp;&nbsp;[&nbsp;or&nbsp;]&nbsp;&nbsp;Your Login Session May be Expired. Please Relogin</font>";
</script>
</body></html>
