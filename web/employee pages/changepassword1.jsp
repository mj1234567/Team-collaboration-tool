
<%@page import="projbean.employeeFunctions"%>
<%@page import="java.lang.String"%>
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
  
   <% String m=(String)session.getAttribute("type"); 
         if(m.equalsIgnoreCase("Admin"))
         {
  %>
      <%@include file="header.jsp"%>
 <% }
else if(m.equalsIgnoreCase("Employee"))
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
     <%
           String current =request.getParameter("current");
           String new1 =request.getParameter("new");
           employeeFunctions x=new employeeFunctions();
           x.setNew1(new1);
           x.setCurrent(current);
          
           String username= (String)session.getAttribute("username");
           
           x.setUser(username);
           boolean b= x.changepassword();
           if(b) {
           %>
                  Password has been changed
                  <% } else{  %>
                   password does not match
                   <% }  %>
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

