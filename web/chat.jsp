
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
       $("#showprojects").show(1000);
       var z=("#a1").val();
       var x=("#a1").val();
       $.ajax( {type:"post",
                url:"chat1.jsp",
                data:"employee_id="+z+"&&from_id="+x,
                async:false,
                success:fucntion(result)
                {
                    $("#chatbox").html(result);
                }
        });
       
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
        <%  String employee_id=(String)session.getAttribute("id");
                  String from_id=request.getParameter("from_id");
                  String from_id1=from_id;
            %>
        
        <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                         <input type='hidden' id='a1' value='<%=employee_id%>'>
                         <input type='hidden' id='a2' value='<%=from_id%>'>
             <div>
            <span class="fonts" style="color:black; margin-left: 330px; font-size: 36px; font-style: arial">Messages</span> 
            <a href="newmessage.jsp" style="margin-left: 360px" class="button">New message</a></div><br>
             <%   
            message t = new message();
            t.setTo(employee_id);
            t.setFrom_id(from_id);
            ArrayList a = t.show1();
            if (a.size() == 0)
            { out.println("No data found");
            }
            else {
        %>
        <table border="0" style="width:700px" cellspacing="0" class="tableback shadow" id="showprojects" >
            <tr class="fonts tablehead" >
                <th style="padding: 10px">chat</th>
               zz
           </tr>
           <tr>
               <td>
                   <textarea rows="20" cols="10" style="height:300px; font-family: cursive;color:#0A79B6">
                       
                  
           
           <%
                String message, to,from;
              Iterator k = a.iterator();
                while (k.hasNext()) { 
                    message w = (message) k.next();
                    message = w.getMessage();
                    from_id=w.getFrom_id();
                    from=w.getFrom();
            %>
            <%=from%> : <%=message%> 
             
            <%
                }
            %>
 </textarea>
               </td>   
            </tr>---------
            <tr>
                <td>
                    
                    <form action="sendchat.jsp?from=<%=employee_id%>&&to=<%=from_id1%>" enctype="multipart/form-data" method="post">
                        <input type="text" name="msg" placeholder="Type message..." style="height:30px; width:85%"> <input type="submit" value="Send">
                       
                    </form>
                </td>
            </tr>
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

