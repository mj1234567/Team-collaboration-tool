
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
function hide()
{ var t=document.getElementById("editmember");
  t.style.visibility="hidden"; 
}
</script>
</head>

<body background="imgaes/a.jpg">
<table width="1261" height="570" border="0" align="center">
  <!--------header starts------>
  <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>
  
 <% String m1=(String)session.getAttribute("type"); 
         if(m1.equalsIgnoreCase("Admin"))
         {
  %>
      <%@include file="header.jsp"%>
 <% }
else if(m1.equalsIgnoreCase("Employee"))
{ %>
         <%@include file="employee header.jsp"%>
        <% } else { %>
        <%@include file="client header.jsp"%>
        <% } %>
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
   
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
   
    <!-------mid section starts------>
    <td align="center" bgcolor="#FFFFFF">
        <form action="changepassword1.jsp" method="post">
        <p class="style14">current password
          <input type="text" name="current" >
        </p>
        <p class="style14">  new password
           &nbsp; &nbsp; <input type="text" name="new" >
        </p>
        &nbsp; &nbsp; <input type="submit" value="change">
        </form>
    
        
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

