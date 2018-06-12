
<%@page import="projbean.editmember"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styles.css" rel="stylesheet" type="text/css">
<%@include file="functions.jsp" %>
</head>
<%@include file="main table.jsp" %>
<!--------header starts------>
  <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>
  
 
         <%@include file="employee header.jsp"%>
       
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
   
    <%@include file="employee side menu.jsp" %>
    <!------side menu ends---->
   
    <!-------mid section starts------>
     <td valign="middle" bgcolor="#eee" align="center">
                     <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Change Password</span>
                         </div><br>
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

