




<%@page import="projbean.project"%>
<%@page import="projbean.clientFunctions"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbean.editmember"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
     <link href="styles.css" rel="stylesheet" type="text/css">
        <link href="dcalendar.picker.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <script src="dcalendar.picker.js" type="text/javascript" ></script>
        
  
         <%@include file="functions.jsp" %> 
        
   
         
  <script>
            $(document).ready(
                    function () {
                        $(".datepicker").dcalendarpicker();
                        $("#form1").validate(
                                {
                                    rules:
                                    {
                                        
                                    }
                                }

                        );

                    });
            </script>
      
        
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
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Change Password</span>
                         </div><br>
        <%
           String current =request.getParameter("current");
           String new1 =request.getParameter("new");
           editmember x=new editmember();
           x.setNew1(new1);
           x.setCurrent(current);
          
           String id= (String)session.getAttribute("username");
            
           x.setUser(id);
           boolean b= x.changepassword();
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



 