<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.dae.dao.SecurityDAO,com.dts.dae.model.Profile" %>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ChangePasswordAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
    	String target="AdminChangepassword.jsp?status=Password Changed Failed";
       		Profile rb=new Profile(); 
            rb.setPassword(request.getParameter("oldpassword")); 
            rb.setLoginID(request.getParameter("username")); 
            rb.setNewPassword(request.getParameter("newpassword")); 
             
            boolean flag=new SecurityDAO().changePassword(rb); 
             
            if(flag) 
                target="AdminChangepassword.jsp?status=Password Changed Successfully"; 
            RequestDispatcher rd = request.getRequestDispatcher(target);
            rd.forward(request,response);
    %>
  </body>
</html>
