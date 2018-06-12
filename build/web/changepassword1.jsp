
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
   
    <%@include file="employee side menu.jsp" %>
    <!------side menu ends---->
   
    <!-------mid section starts------>
     <td valign="middle" bgcolor="#eee" align="center">
                     <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Change Password</span>
                         </div><br>
        <%
           String current =request.getParameter("current");
           String new1 =request.getParameter("new");
           editmember x=new editmember();
           x.setNew1(new1);
           x.setCurrent(current);
          
           String id= (String)session.getAttribute("id");
            
           x.setId(id);
           boolean b= x.changepassword1();
           if(b) {
           %>
           <span style="font-family: cursive; font-size: 24px;">Password has been changed</span>
                  <% } else{  %>
                  <span style="font-family: cursive; font-size: 24px;"> Could'nt change password </span>
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



 