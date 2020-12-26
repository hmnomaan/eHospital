
<html><head>
<script language="JavaScript" src="scripts/gen_validatorv31.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="scripts/ts_picker.js"></script>
<script language="JavaScript1.1" src="scripts/pass.js">
</script> <script type="text/javascript" src="scripts/image.js"> </script>
 <script type="text/javascript" src="scripts/general.js"> </script>
 <script type="text/javascript" src="scripts/adi.js"> </script>
 <script type="text/javascript" src="scripts/form_validation.js"> </script>
<script type="text/javascript" src="scripts/moveclock.js"></script>
<title>eHospital </title>
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
	background-color: #003399;
}
.style5 {
	color: #660000;


    font-weight: bold;
    font-size: 18px;
}
-->
</style>
<script type="text/javascript" src="scripts/project.js"></script>
<script type="text/javascript" src="scripts/general.js"> </script>
   <script type="text/javascript" src="scripts/ts_picker.js"> </script>
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
          <td height="28"><jsp:include page="useroptions.html"/></td>
        </tr>
        <tr>
          <td height="435" valign="top" bgcolor="#E6E2E9">
            <noscript>
            </noscript>            <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10"></p>
            <noscript>
            </noscript>
            <p>
             <%if(request.getParameter("status")!=null)
          {   %><%=request.getParameter("status") %>
<%} %>
            Welcome  Patient  <%=(String)session.getAttribute("user")%></p>
            <p align="center"><span class="style5">Patient Details </span></p>
            <form action="ProcessPatientDetails.jsp" method="post"  name="register" onsubmit="return validateFields()">
              <table width="500" align="center">
                <tr>
                  <td><strong>LoginName</strong></td>
                  <td><label for="textfield"></label>
                    <input type="text" name="loginname" id="loginname" value="<%=(String)session.getAttribute("user")%>"></td>

    </tr>
             <tr>
                  <td><strong>Age</strong></td>
                  <td><label for="label"></label>
                    <input type="text" name="age" id="label"></td>
                </tr>
                <tr>
                  <td><strong>Height(cm)</strong></td>
                  <td><label for="label2"></label>
                    <input type="text" name="height" id="label2"></td>
                </tr>
                <tr>
                  <td><strong>Weight(KG)</strong></td>
                  <td><label for="label3"></label>
                    <input type="text" name="weight" id="label3"></td>
                </tr>
                <tr>
                  <td><strong>Bloodgroup</strong></td>
                  <td><label for="label6"></label>
                    <input type="text" name="bggroup" id="label6"></td>
                </tr>
                <tr>
                  <td><strong>BP</strong></td>
                  <td><label for="label4"></label>
                    <label for="bp"></label>
                    <select name="bp" id="select">
                      <option value="">--select any one--</option>

                      <option value="Normal">Normal</option>
                      <option value="Low">Low</option>
                      <option value="Heigh">Heigh</option>
                    </select>                    </td>


                </tr>
                <tr>
                  <td><strong>Sugar</strong></td>
                  <td><select name="sugar" id="select2">
                  <option value="">--select any one--</option>
                   <option value="Normal">Normal</option>
                    <option value="Low">Low</option>
                    <option value="Heigh">Heigh</option>
                  </select></td>
                </tr>
                <tr>
                  <td><strong>RegDate</strong></td>
                  <td><label for="label5"></label>
                    <input type="text" name="regdate" id="label5" ><a               href="javascript:show_calendar('document.register.regdate', document.register.regdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
              </tr>
              </table>
              <p>
                <label for="Submit"></label>
              </p>
              <p align="center">
                <input type="submit" name="Register" value="Register" id="Submit">
              </p>
            </form> <script language="JavaScript" type="text/javascript">
      //You should create the validator only after the definition of the HTML form
      var frmvalidator  = new Validator("register");
     frmvalidator.addValidation("age","req","Please enter Age");
     frmvalidator.addValidation("age","age");
     frmvalidator.addValidation("weight","req","Please enter Weight");


     frmvalidator.addValidation("weight","age");
     frmvalidator.addValidation("bggroup","req","Please enter Blood Group");
     frmvalidator.addValidation("bp","dontselect=0");
    frmvalidator.addValidation("sugar","dontselect=0");
    frmvalidator.addValidation("regdate","req","Please enter Register Date");
    </script>
      <p>&nbsp;            </p></td>
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
