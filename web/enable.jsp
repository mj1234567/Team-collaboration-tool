
<%@page import="projbean.project"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbean.editmember"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styles.css" rel="stylesheet" type="text/css">
<script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
<style>
.midlinks{
    font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	color: #990000;
    
}
-->
</style>
<script>
    $(document).ready(
            function()
    {
       $("#showprojects").hide();
        $("#showprojects").show(1000);
    }
            );
    
    </script>

<%@include file="functions.jsp" %>
</head>

<%@include file="main table.jsp" %>
  <!--------header starts------>
  
      <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>  
       
  <%@include file="header.jsp" %>
      <!----header menu ends----->
    </td>
  </tr>
  <tr>
    <!------side menu starts------>
   
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
   
    <!-------mid section starts------>
    <td align="center" style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg)" valign="top">
     <%
           String username=request.getParameter("user");
           editmember x=new editmember();
           x.setUser(username);
           
           x.enable();
           %>
           
      <span style="font-family: cursive; font-size: 24px">  <%= username %> Enabled </span>
        
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

