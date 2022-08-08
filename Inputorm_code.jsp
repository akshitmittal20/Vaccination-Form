<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Doctor Details</title>
</head>
<%@ include file="conn.jsp"%>	
<body>
<%
String a=request.getParameter("t1");
String a1=request.getParameter("t2");
String a2=request.getParameter("t3");
String a3=request.getParameter("t4");
String a4=request.getParameter("t5");
String a5=request.getParameter("t6");
String a6=request.getParameter("t7");
String a7=request.getParameter("t8");
String a8=request.getParameter("t9");

String a9=request.getParameter("select");
String a10=request.getParameter("select1");
String a11=request.getParameter("Vaccine_nm");
String a12=request.getParameter("t10");
String a13=request.getParameter("select2");



int m=0;
try
{
st.executeUpdate("Insert into register values('"+a1+"','"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+a11+"','"+a12+"','"+a13+"')");

response.sendRedirect("welcome.jsp");
}
catch(Exception rt)
{
	out.print(rt);
}


%>
</body>
</html>
