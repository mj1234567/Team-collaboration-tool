
<%@page import="projbean.editmember"%>
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
        
</head>
<%@include file="main table.jsp" %>
<!--------header starts------>
  <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>
        
        <%@include file="header.jsp"%>
 
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
        String address=request.getParameter("address");
        String password=request.getParameter("pass");
        String gender=request.getParameter("gender");
        String country=request.getParameter("country");
        String name=request.getParameter("name");
        String father=request.getParameter("father");
        String qualification=request.getParameter("qualification");
        String married=request.getParameter("married");
        String contact=request.getParameter("contact");
        String email=request.getParameter("email");
        String image=request.getParameter("image");
        editmember x=new editmember();
         x.setUser(username);
        x.setAddress(address);
        x.setCountry(country);
        x.setGender(gender);
        x.setPass(password);
        x.setName(name);
        
        x.setFather(father);   
        x.setQualification(qualification);      
        x.setMarried(married);           
        x.setContact(contact);
        x.setFile1(image);
        x.setEmail(email);
        int a= x.modify();
       %>
       
  
       <span style="font-size: 24px; font-family: cursive ">Account of <%=username%>  has been update</span>
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

