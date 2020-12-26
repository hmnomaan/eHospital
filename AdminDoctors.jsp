<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.dae.dao.ProfileDAO,com.dts.dae.model.Profile,java.util.*"%> 

<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,com.dts.core.util.*" %>



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
<meta name="description" content="Telemedicine.com is your Telemedicine resource. Visit the Telemedicine Discussion Forum, Worldwide Provider Directory, FAQs, Jobs, Grant Opportunities, etc." telemed.css="" rel="stylesheet" type="text/css">
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
.style13 {color: #FFFFFF; font-weight: bold; }
.style14 {color: #660000}
.style16 {color: #660000; font-weight: bold; }
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
            </noscript>            <img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
<noscript>
            </noscript>Welcome    <%=(String)session.getAttribute("user")%>
            <form action="ProcessDoctor.jsp" method="post">
              <p>
                <%
            String doctorname1=request.getParameter("doctorname");
            try{
            DoctorDAO adoctordao=new DoctorDAO();
            CoreHash acorehash=adoctordao.viewOneDoctors(doctorname1);
            if(!(acorehash.isEmpty()))
            {%>
              </p>
              <p><strong>DoctorDetails  </strong></p>
              <table border="1" bordercolor="#663300">
            <tr bgcolor="#480A77">
            
            <td width="137"><div align="center"><span class="style13">DoctorName</span></div></td>
            <td width="150"><div align="center"><span class="style13">Specialization</span></div></td>
            <td width="142"><div align="center"><span class="style13">Qualification</span></div></td>
            <td width="175"><div align="center"><span class="style13">AvailiableDate</span></div></td>
            <td width="182"><div align="center"><span class="style13">HospitalName</span></div></td>
            </tr>
            <%
            String doctorname=null;
             String specilization=null;
             String qualification=null;
             String adate=null;
            String hospitalname=null;
            Enumeration aenumeration=acorehash.keys();
            while(aenumeration.hasMoreElements())
            {
            Integer i1=(Integer)aenumeration.nextElement();
            Profile aprofile=(Profile)acorehash.get(i1);
           doctorname=aprofile.getLoginID();
             specilization=aprofile.getSpecilization(); 
             qualification=aprofile.getQualification();
             adate=aprofile.getAvailiabledate();
             hospitalname=aprofile.getHospitalname();
             %><%} %>
<tr>
            <td><div align="center"><strong><span class="style14">
            <A href="AdminDoctorDetails.jsp?loginname=<%=doctorname%>"><%=doctorname%></A></span></strong></div></td>
            <td><div align="center"><strong><span class="style14"><%=specilization%></span></strong></div></td>
            <td><div align="center"><strong><span class="style14"><%=qualification %></span></strong></div></td>
            <td><div align="center"><strong><span class="style14"><%=adate%></span></strong></div></td>
            <td><div align="center"><strong><span class="style14"><%=hospitalname%></span></strong></div></td>
            </tr>            
            

</table>             
            <%}else { %>
             <span class="style16">Doctors Not Availiable</span>
            <%}}catch(Exception e)
            {
            } %>
          
            </form>
</td>
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