
<%@page import="projbean.editmember"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styles.css" rel="stylesheet" type="text/css">
<script src="jquery-1.12.3.min.js"></script>
         <script src="jquery.validate.js"></script>
<%@include file="functions.jsp" %>
</head>
<%@include file="main table.jsp" %>
<!--------header starts------>
  <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>
  <%@include file="header.jsp" %>
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
   
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
   
    <!-------mid section starts------>
    <td valign="middle" bgcolor="#eee" align="center">
                     <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial"></span>
                         </div><br>
     <%
           String username=request.getParameter("user");
           editmember x=new editmember();
           x.setUser(username);
           int a=x.delete();
           if(a==1){
         %>
         <span style="font-size: 24px; font-family: cursive ">record deleted</span>
         <% } 
              else
%>   <span style="font-size: 24px; font-family: cursive ">no record found </span>
           
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
