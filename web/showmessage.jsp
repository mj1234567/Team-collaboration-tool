
<%@page import="projbean.message"%>
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
        $("#reply").hide();
        $("#showprojects").show(1000);
         $("#reply1").click(
                function()
        {
            $("#reply").toggle(1000);
        }
                );
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
 
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
    <!-------mid section starts------>
    <td bgcolor="#eee" align="center" valign="top">
        
        
        <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                          
             <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Messages</span>
             </div><br>
             <%   String employee_id=(String)session.getAttribute("id");
                  String from_id=request.getParameter("from");
            message t = new message();
            t.setEmployee_id(employee_id);
            t.setFrom_id(from_id);
            ArrayList a = t.showmessage();
            if (a.size() == 0)
            { out.println("No data found");
            }
            else {
        %>
        <table border="0" width="200px" cellspacing="0" class="tableback shadow" id="showprojects" >
            <tr class="fonts tablehead" >
                <th style="padding: 10px">Name</th>
             
                            
            </tr>
            <%
                String message;
              Iterator k = a.iterator();
                while (k.hasNext()) { 
                    message w = (message) k.next();
                   
                    message=w.getMessage();
                    
            %>
            <tr class="fonts">
                <td style="padding: 10px"><%= message%></td> 
               
                </tr>
                
            
                
            
            <%
                }
            %>
        </table>
        <%
            }
        %>   
        <br>
       <div style="margin-left:900px;">
        <button id="reply1" class="button" >Reply</button>
         </div>
            <table border="0" id="reply" width="100%"  >
                <tr>
                   <td>
                        <form action="sendmessage.jsp?to=<%=employee_id%>&&from=<%=from_id%>" id="f1" name="f1" enctype="multipart/form-data" method="post" >
                            <span class="fonts">Type Message</span><br><textarea rows="8" name="msg" cols="20" placeholder="Type here..."></textarea>
                            <br><br><input type="file" name="file1">
                            <br><br><input type="submit" value="send">
                        </form>
                    </td>
                </tr>
            </table> 
      
    <!------mid section ends------>
        </div>
  </tr>
  <tr>
    <td height="30">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>

