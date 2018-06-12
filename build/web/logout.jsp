
<%@page import="projbean.editmember"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styles.css" rel="stylesheet" type="text/css">
<script>
function show()
{ var t=document.getElementById("editmember");
  t.style.visibility="visible"; 
}
</script>
</head>

<body background="imgaes/a.jpg">
<table width="1162" height="570" border="0" align="center">
  <!--------header starts------>
  
  <%@include file="header.jsp" %>
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
   
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
   
    <!-------mid section starts------>
    <td align="center" bgcolor="#FFFFFF">
     <%
           session.invalidate();
            response.sendRedirect("log in page.html");
         %>
           
    </td>
    <!------mid section ends------>
  </tr>
  <tr>
    <td height="30">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>

