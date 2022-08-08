<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*,java.sql.*"%> 


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style6 {color: #000000; font-weight: bold; }
.style7 {color: #000000}
.style9 {font-size: 12px}
.style10 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style11 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10;
}
.style12 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style14 {
	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
	color: #F00;
}
.style15 {font-family: "Courier New", Courier, monospace}
td {
	color: #FFF;
}
a {
	color: #F9F9F9;
}
td {
	color: #F00;
}
td {
	color: #000;
}
-->
</style>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="">
<table width="80%" border="0" align="center" cellpadding="5" cellspacing="5" >
  <tr>
    <td height="183" colspan="2" valign="top" bgcolor="#133DA3"><img src="img/1.png" width="1200" height="270" /></td>
  </tr>
  <tr>
    <td width="50" height="33" bgcolor="#1D8ADC"><a href="index.jsp"><img src="img/hh.jpg" width="50" height="50" /></a></td>
    <td width="1135" bgcolor="#1D8ADC"><a href="index.jsp">HOME</a></td>
  </tr>
  <tr>
    <td height="396" colspan="2" valign="top" bgcolor="#F9F9F9"><p>&nbsp;</p>
      <table rules="none" width="684" border="1" align="center" cellpadding="8" cellspacing="5">
        <tr>
          <td colspan="2" align="center" valign="bottom" bgcolor="#FAFAFA"><h1>Final Certificate for COVID-19 Vaccination</h1></td>
          </tr>
        <tr>
          <td colspan="2" align="center" valign="bottom" bgcolor="#FAFAFA"><table width="416" border="0" cellpadding="3" cellspacing="3">
            <tr>
              <td width="330" align="center"><span id="sprytextfield1">
                <input name="text1" type="text" id="text1" value="Enter Aadhaar Card/Mobile Number" size="44" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
              <td width="178"><input type="submit" name="button" id="button" value="Submit" /></td>
              </tr>
            </table></td>
          </tr>
        <tr>
          
          <%
String a=request.getParameter("text1");

ResultSet rs=st.executeQuery("SELECT *  FROM register where Adhcardn='"+a+"' or mob_no='"+a+"'" );

//ResultSet rs=st.executeQuery("SELECT *  FROM register" );

while(rs.next())
{
%>
          <td width="320">First Name</td>
          <td width="399"><%= rs.getString(1) %></td>
          </tr>
        <tr>
          <td>Middle Name</td>
          <td><%= rs.getString(2) %></td>
          </tr>
        <tr>
          <td>Surname</td>
          <td><%= rs.getString(3) %></td>
          </tr>
        <tr>
          <td>Aadhaar Card Number</td>
          <td><%= rs.getString(4) %></td>
          </tr>
        <tr>
          <td>Date of Birth</td>
          <td><%= rs.getString(5) %></td>
          </tr>
        <tr>
          <td>Address&nbsp;</td>
          <td><%= rs.getString(6) %></td>
          </tr>
        <tr>
          <td>City</td>
          <td><%= rs.getString(7) %></td>
          </tr>
        <tr>
          <td>Email Address</td>
          <td><%= rs.getString(8) %></td>
          </tr>
        <tr>
          <td>Mobile Number</td>
          <td><%= rs.getString(9) %></td>
          </tr>
        <tr>
          <td>Vaccination Centre&nbsp;</td>
          <td><%= rs.getString(10) %></td>
          </tr>
        <tr>
          <td>Vaccination Group</td>
          <td><%= rs.getString(11) %></td>
          </tr>
        <tr>
          <td>Vaccine name&nbsp;</td>
          <td><%= rs.getString(12) %></td>
          </tr>
        <tr>
          <td>Time</td>
          <td><%= rs.getString(13) %></td>
          </tr>
        <tr>
          <td>Certificate Type</td>
          <td><%= rs.getString(14) %></td>
          </tr>
        <tr>
          <td colspan="2" bgcolor="#000000">&nbsp;</td>
          </tr>
        <%
   }

	  %>
        </table>
      <h2>&nbsp;</h2></td>
  </tr>
  <tr>
    <td height="33" colspan="2" valign="top" bgcolor="#FF9326"><img src="img/weee.jpg" width="1200" height="501" /></td>
  </tr>
</table>
</form>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
</script>
</body>
</html>
