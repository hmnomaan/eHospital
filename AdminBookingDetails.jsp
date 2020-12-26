<%@ page import="com.dts.core.util.*,java.util.*,com.dts.project.model.*,com.dts.project.dao.*"%>



<html><head>

<title>Virtual Medical Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//--><meta name="keywords" content="telemedicine, telehealth, telemedicine directory, telemedicine providers, telemedicine recruiting, telemedicine jobs, telemedicine telemedicine careers, telemedicine doctors, clinics, healthcare, international, national, medical peripherals, consulting, medicine, video, audio, network, computer, internet">

</script>
<meta name="description" content="Telemedicine is your Telemedicine resource. Visit the Telemedicine Discussion Forum, Worldwide Provider Directory, FAQs, Jobs, Grant Opportunities, etc." telemed.css="" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {font-weight: bold; line-height: 35px; color: #FFFFFF; font-style: normal; font-size: 12px;}
-->
</style>
<link href="images/telemed.css" rel="stylesheet" type="text/css">

<style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
body {
	background-color: white;
}
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #663300;
}
.style11 {color: #FFFFFF; font-weight: bold; }
.style12 {
	color: #663300;
	font-weight: bold;
}
-->
</style>
</head><body leftmargin="0" topmargin="0"> 
<table align="left" border="0" cellpadding="3" cellspacing="0" width="952">
  <tbody><tr>
    <td valign="top" width="58"><p align="center">&nbsp;</p>
      <p align="center">&nbsp;</p>      
      <p align="center">&nbsp;</p>
    <p align="center">&nbsp;</p></td>
    <td width="899"><table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="716" width="903">
      <tbody>
        <tr bgcolor="#003399">
          <td width="903" height="78">
            <table border="0" cellpadding="0" cellspacing="0" height="12" width="530">
              <tbody>
                <tr>
                  <td align="middle" bgcolor="white" height="107" valign="top" width="724">
                    <table id="AutoNumber8" border="0" bordercolor="#000000" cellpadding="0" cellspacing="0" height="112" width="100%">
                      <tbody><tr>
                       <td height="110" bgcolor="#E6E2E9"><div align="center"><img src="images/health.jpg" border="0" height="78" width="909"></div></td>
                      </tr>
                  </tbody></table></td>
                </tr>
                <tr bgcolor="#000000">
                  <td bgcolor="#0000ff" height="2" width="724"></td>
                </tr>
              </tbody>
          </table></td>
        </tr>
        <tr>
          <td height="28"><jsp:include page="Admin.html"/></td>
        </tr>
        <tr>
          <td height="435" valign="top" bgcolor="lightblue">
            <noscript>
            </noscript>            <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
            </p>
            <noscript>
            </noscript>
            <p>Welcome  <%=(String)session.getAttribute("user")%>
              
                <%

String doctorname=(String)session.getAttribute("user");
System.out.println(doctorname);
CoreHash acorehash=new BookingDAO().viewBookings();
%>
            <p><strong>Booking Details 
            </strong>
            
            
<%
if(!(acorehash.isEmpty()))
{
%>
<table border="1" align="center" bordercolor="#663300">
   <tr bgcolor="#400A6C"><td width="128"><div align="center" class="style11">PatientName</div></td>
 <td width="272"><div align="center" class="style11">DoctorName</div></td>
 <td width="158"><div align="center" class="style11">ADate</div></td>
 <td width="227"><div align="center" class="style11">Timings</div></td>
 </tr>
<%
Enumeration aenumeration=acorehash.keys();
while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
Booking abooking=(Booking)acorehash.get(i1);
String loginname1=abooking.getLoginname();
String doctorname1=abooking.getDoctor();
String adate1=abooking.getAdate();
String timings=abooking.getTimings();

 %>
           
         
           
 <tr>
 <td><div align="center" class="style12"><%=loginname1%></div></td>
 <td><div align="center" class="style12"><A href="AdminDoctors.jsp?doctorname=<%=doctorname1%>"><%=doctorname1%></A></div></td>
 <td><div align="center" class="style12"><%=adate1%></div></td><td>
 <div align="center" class="style12"><%=timings%></div></td></tr>
 
 <%}%></table><% }else
 {
  %>
 No Records
  <%} %></td>
          </tr>
        <tr>
          <td align="middle" height="1"></td>
        </tr>
        <tr bgcolor="#0033ff">
          <td align="middle" height="3"></td>
        </tr>
        <tr bgcolor="#333333">
          <td align="middle" height="1">
            <p class="style3" align="center">&nbsp;</p></td>
        </tr>
        <tr bgcolor="#333333">
          <td align="middle" height="1">&nbsp;</td>
        </tr>
      </tbody>
    </table>    </td>
    </tr>
</tbody></table>
</body></html>