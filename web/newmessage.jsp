
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
    function show1(x)
    {   
        $("#"+x).toggle(1000);
    }
     
 </script>
 
<script>
    $(document).ready(
            function()
    {  $(".abc").hide();
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
       
  <%@include file="employee header.jsp" %>
      <!----header menu ends----->
    </td>
  </tr>
 
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
    <%@include file="employee side menu.jsp" %>
    <!------side menu ends---->
    <!-------mid section starts------>
    <td bgcolor="#eee" align="center" valign="top">
        
        
        <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                          
             <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Send message</span>
             </div><br>
       <%
            editmember t = new editmember();
            ArrayList a = t.showAll();
            if (a.size() == 0)
             out.println("No data found");
             else {
        %>
        <table border="0" width="200px" cellspacing="0" class="tableback shadow" id="showprojects" >
            <tr class="fonts tablehead" >
                <th style="padding: 10px">Name</th>
           
                            
            </tr>
            <%
                String name,f1="b",to;
                String employee_id=(String)session.getAttribute("id");
                 int f=1;
              Iterator k = a.iterator();
                while (k.hasNext()) { 
                    editmember w = (editmember) k.next();
                    name = w.getName();
                    to=w.getId();
                     f++;
                   
                    f1+=""+f;
            %>
            <tr class="fonts">
                <td style="padding: 10px"><a href="javascript:show1('<%=f1%>')" class="links"><%=name%></a>  
              
                    <table border="0" id="<%=f1%>" class="abc" width="100%">
                <tr><td>
                     <form action="sendmessage.jsp?to=<%=to%>&&from=<%=employee_id%>" id="f1" name="f1" enctype="multipart/form-data" method="post" >
                            <span class="fonts">Type Message</span><br><textarea rows="8" name="msg" cols="20" placeholder="Type here..."></textarea>
                            <br><br><input type="file" name="file1">
                            <br><br><input type="submit" value="send">
                        </form>   
                        
                       </td></tr>
                </table>
                 
                </td> 
                
              
            </tr>
            <%
                }
            %>
        </table>
        <%
            }
        %>   
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

