<%@ page
	import="com.dts.core.util.*,com.dts.project.model.*,com.dts.project.dao.*,java.util.*"%>


<html>
	<head>

		<title>Virtual Medical Home</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
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
		<meta name="description"
			content="Telemedicine is your Telemedicine resource. Visit the Telemedicine Discussion Forum, Worldwide Provider Directory, FAQs, Jobs, Grant Opportunities, etc."
			telemed.css="" rel="stylesheet" type="text/css">
		<style type="text/css">
<!--
.style3 {
	font-weight: bold;
	line-height: 35px;
	color: #FFFFFF;
	font-style: normal;
	font-size: 12px;
}
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
.style12 {color: #FFFFFF; font-weight: bold; }
.style13 {color: #660000}
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #663300;
}
-->
        </style>
	</head>
	<body leftmargin="0" topmargin="0">
		<table align="left" border="0" cellpadding="3" cellspacing="0"
			width="952">
			<tbody>
				<tr>
					<td valign="top" width="58">
						<p align="center">&nbsp;
							
						</p>
						<p align="center">&nbsp;
							
						</p>
						<p align="center">&nbsp;
							
						</p>
						<p align="center">&nbsp;
							
						</p>
					</td>
					<td width="899">
						<table align="center" bgcolor="#ffffff" border="0" cellpadding="0"
							cellspacing="0" height="716" width="903">
							<tbody>
								<tr bgcolor="#003399">
									<td width="903" height="78">
										<table border="0" cellpadding="0" cellspacing="0" height="12"
											width="530">
											<tbody>
												<tr>
													<td align="middle" bgcolor="white" height="107"
														valign="top" width="724">
														<table id="AutoNumber8" border="0" bordercolor="#000000"
															cellpadding="0" cellspacing="0" height="112" width="100%">
															<tbody>
																<tr>
																	<td height="110" bgcolor="#E6E2E9"><div align="center"><img src="images/health.jpg" border="0" height="78" width="909"></div></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												<tr bgcolor="#000000">
													<td bgcolor="#0000ff" height="2" width="724"></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td height="28"><jsp:include page="Admin.html" /></td>
								</tr>
								<tr>
								  <td height="435" valign="top" bgcolor="lightblue">
										<noscript>
										</noscript>
										<p><img src="images/clearpixel.gif" align="top" height="10"
											width="10">
										    <img src="images/clearpixel.gif" height="10" width="10">
								    </p>
										<noscript>
										</noscript>
										<p>									  Welcome 
										  <%=(String) session.getAttribute("user")%>

										  <%
											try {

												ComplicantDAO acomplicantdao = new ComplicantDAO();
												//String loginname = (String)session.getAttribute("user");
												CoreHash acorehash = acomplicantdao.viewAllComplicants();
												if (!(acorehash.isEmpty())) {
													Enumeration aenumeration = acorehash.keys();
										%>
	    </p>
										<p><strong>All Complicants Details                                 </strong></p>
										<table border="1" bordercolor="#660000">
											<tr bgcolor="#430B70">
												<td width="82"><div align="center"><span class="style12">
												  PatientName												</span></div></td>
												<td width="142"><div align="center"><span class="style12">
												  Complication												</span></div></td>
												<td width="98"><div align="center"><span class="style12">
												  RegDate												</span></div></td>
												<td width="98"><div align="center"><span class="style12">
												  Status												</span></div></td>
												<td width="139"><div align="center"><span class="style12">
												  DateRequired												</span></div></td>
												<td width="207"><div align="center"><span class="style12">
												  Timings												</span></div></td>
										  </tr>
											<%
												while (aenumeration.hasMoreElements()) {
															Integer i1 = (Integer) aenumeration.nextElement();
															Complicants acomplicants = (Complicants) acorehash
																	.get(i1);
															String loginname1 = acomplicants.getLoginname();
															String complication = acomplicants.getComplication();
															String regdate = acomplicants
																	.getRegdate();
															String status = acomplicants.getStatus();

															String adate = DateWrapper.parseDate(acomplicants
																	.getDateofavailablity1());
															String timings = acomplicants.getTimings();
											
											
											%>

											<tr>
												<td><div align="center" class="style13"><a href="AdminViewReports.jsp?loginname=<%=loginname1%>"><%=loginname1%></a>												</div></td>
												<td><div align="center" class="style13"><%=complication%></div></td>
												<td><div align="center" class="style13"><%=regdate%></div></td>
												<td><div align="center" class="style13"><%out.println(status);%></div></td>
												<td><div align="center" class="style13"><%out.println("<A href='AvailiableDoctor.jsp?adate="+adate+"&loginname="+loginname1+"'>"+adate+"</A>");%></div></td>
												<td><div align="center" class="style13"><%=timings%></div></td>
											</tr>

											<%
												}
											%>
								    </table>
								    
								    <div align="center">
								    <%
											} else {
										%>
									You Have No Complicants
									<%
											}
											} catch (Exception e) {
												e.printStackTrace();
											}
										%>								    
								  </div></td>
								</tr>
								<tr>
									<td align="middle" height="1"></td>
								</tr>
								<tr bgcolor="#0033ff">
									<td align="middle" height="3">
										
									</td>
								</tr>
								<tr bgcolor="#333333">
									<td align="middle" height="1">
										<p class="style3" align="center">&nbsp;
											
										</p>
									</td>
								</tr>
								<tr bgcolor="#333333">
									<td align="middle" height="1">&nbsp;
										
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>