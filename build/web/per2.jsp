
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
        <%@include file="functions.jsp" %>
        <style>
            .midlinks{
                font-size: 16px;
                font-family: Arial, Helvetica, sans-serif;
                color: #990000;

            }
            -->
        </style>

        
    </head>
    <%@include file="main table.jsp" %>
     <!--------header starts------>

            <% String s = (String) session.getAttribute("username");
                if (s == null) {
                    response.sendRedirect("log in page.html");
                }
            %>  

            <%@include file="header.jsp" %>
            <!----header menu ends----->
        
   

    <!-------header ends---->
    <tr>
        <!------side menu starts------>
        <%@include file="side menu.jsp" %>
        <!------side menu ends---->
        <!-------mid section starts------>
        <td bgcolor="#eee" align="center">
       <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
            <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Performance</span>
             </div><br><br>
            
            <form  method ="post" action="performance.jsp">
                <b> <span style="font-family: cursive; font-size: 18px;">Name of employees </span>
                <select name="empid">
                    
                      <%
                editmember t = new editmember();
                ArrayList a = t.showAll();
                if (a.size() == 0)
                    out.println("No data found");
                else {
                    String name="",id="";
                     Iterator k = a.iterator();
                        while (k.hasNext()) 
                        {
                      editmember d = (editmember)k.next();
                      name=d.getName();
                           id=d.getId();
                                                                
                                           
                           %>
                                                
                  <option value="<%=id%>"><%= name %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
        <% } %>
         <% } %>
                                                       
         
                    
                </select> <br>
                <br>

                    
                <input type="submit" value="next">                 
              
            </form>
          
           
              
    
            <!------mid section ends------>
    </tr>
    <tr>
        <td height="30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</body>
</html>

