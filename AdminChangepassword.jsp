<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Virtual Medical Home</title>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type"
			content="text/html; charset=ISO-8859-1">
		<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	</head>
	<body>
	<html><head>

<title>Telemedicine</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//--><meta name="keywords" content="telemedicine, telehealth, telemedicine directory, telemedicine providers, telemedicine recruiting, telemedicine jobs, telemedicine telemedicine careers, telemedicine doctors, clinics, healthcare, international, national, medical peripherals, consulting, medicine, video, audio, network, computer, internet">

</script><script type="text/javascript" src="scripts/project.js"></script>
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
.style4 {font-size: 14px; line-height: 18px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;}
.style5 {font-size: 14px; color: #0033CC; font-family: Arial, Helvetica, sans-serif;}
.style7 {color: #0000FF}
.style8 {color: #5B8E61}
body {
	background-color: white;
}
.style9 {font-weight: bold; color: #0000FF; line-height: normal; display: list-item; font-family: Arial, Helvetica, sans-serif;}
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
            </noscript>Welcome  Admin  <%=(String)session.getAttribute("user")%>
            
            <%if(request.getParameter("status")!=null){ %>
	<%=request.getParameter("status") %>
	<%} %>
		<form id="form3" name="newedesignation" method="post"
			action="AdminChangePasswordAction.jsp" onsubmit="return validateFields()">
			<table border="0" align="center">
				<tr>
					<td>
						Login Name
					</td>
					<td>
						<input type="text" name="username" value="<%=(String)session.getAttribute("user")%>" />
					</td>
				</tr>
				<tr>
					<td>
						Old Password
					</td>
					<td>
						<input type="password" name="oldpassword" />
					</td>
				</tr>
				<tr>
					<td>
						New Password
					</td>
					<td>
						<input type="password" name="newpassword" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="center">
							<input type="submit" name="Submit" value="Change" />

						</div>
					</td>
				</tr>
			</table>
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