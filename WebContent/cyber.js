 var ie4=document.all    // Microsoft Internet Explorer
 var ns4=document.layers // Netscape Navigator
 var ns_gecko=document.getElementById&&!document.all //Netscape Gecko,Mozilla..
 document.onselectstart=new Function("return false");
 function lieffect() {
 var ipt=document.getElementsByTagName('INPUT'); 
 for(ip=0;ip<ipt.length;ip++) {
 ipt[ip].style.cssText="font-weight:bold;height:30px;background:whitesmoke;color:gray;border:1px solid gray";
 ipt[ip].onfocus=function() { this.style["backgroundColor"]='papayawhip';}
 ipt[ip].onblur=function() { this.style["backgroundColor"]='whitesmoke';}
 } 
 var bt=document.getElementsByTagName('BUTTON'); 
 for(btn=0;btn<bt.length;btn++) {
 bt[btn].style.cssText="cursor:pointer;font-weight:bold;height:30px;background:lightslategray;color:aliceblue;width:200px;border:1px solid orange";
 bt[btn].onmouseover=function() { this.style["backgroundColor"]='steelblue';this.blur()}
 bt[btn].onmouseout=function() { this.style["backgroundColor"]='lightslategray';}
 } 
 var tlist=document.getElementById('homing').getElementsByTagName('A'); 
 for(i=0;i<tlist.length;i++) {
 tlist[i].style.cssText="cursor:pointer;font-weight:bold;text-align:center;text-decoration:none;color:aliceblue;"
 tlist[i].onmouseover=function() { this.style["textDecoration"]="underline";this.style.color='lightcyan'}
 tlist[i].onmouseout=function() { this.style["textDecoration"]='none';this.style.color='aliceblue'}
 } }
 function getNavigate(urlnvg) {if(urlnvg.indexOf("javascript:")==-1) location=urlnvg;}
 it_park=new Array();
 it_park[0]=["Home","home.jsp"];
 it_park[1]=["Signup","signup.htm"]
/* it_park[2]=["Login","cyber.jsp"] */
 document.write("<div id=homing><table width=780 cellspacing=0 cellpadding=4 id=mozz><tr><Td align=center>");
 for(i=0;i<it_park.length;i++) 
 document.write("<a href='"+it_park[i][1]+"' onfocus=this.blur(); oonclick=getNavigate('"+it_park[i][1]+"');>"+it_park[i][0]+"</a>&nbsp;&nbsp;<font color=aliceblue>|</font>&nbsp;&nbsp;");
 document.write("<a href='logout.jsp'>Logout</a></td></tr></form></table></div>");
 var BLUE="black";
 document.getElementById('mozz').style.cssText="font-family:tahoma;font-size:30px;width:100%;background:"+BLUE+";color:aliceblue;filter:progid:DXImageTransform.Microsoft.Gradients(startcolorstr='#6699cc',endcolorstr='aliceblue',gradienttype='0');-moz-border-radius:20px;font-weight:bold"
 var ieop=0;
 var op_id=0;
 var message="";
 function clickNS(e) {
 if(ns4 ||ns_gecko) {
 if (e.which==2 || e.which==3) {
 (message);return false;} } }
 if (ns4) {
 document.captureEvents(Event.MOUSEDOWN);
 document.onmousedown=clickNS; }
 else {
 document.onmouseup=clickNS;
 document.oncontextmenu=new Function("return false");
 }
lieffect();
