
<%@page import="projbean.DataConnection"%>
<%@page import="java.sql.Connection"%>
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
        
        
   
<style>
.midlinks{
    font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	color: #990000;
    
}
-->
</style>
<script>
    function chat1()
    {
        var z=$("#a1").val();
       var x=$("#a2").val();
       
       $.ajax( {type:"get",
                url:"chat1.jsp",
                data:"employee_id="+z+"&&from_id="+x,
                async:false,
                 success:function(result)
                                           {  
                                              
                                             $("#chatbox").html(result);
                                              var textarea1 = document.getElementById('textarea_id');
                                               textarea1.scrollTop = textarea1.scrollHeight; 
                                           }
        });
        
    } 
        function send1()
    {
        var z1=$("#a1").val();
       var x1=$("#a2").val();
       var x2=$("#msg").val();
      
       $.ajax( {type:"get",
                url:"sendchat.jsp",
                data:"employee_id="+z1+"&&from_id="+x1+"&&msg="+x2,
                async:false,
                 success:function(result)
                                           {  
                                              
                                             $("#msg").html("");  
                                           }
        });
    }
    
    function chat2()
    {
        
         setInterval("chat1()",1000);
    }
    </script>
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

<body style="background-image: url(imgaes/7974765422_aae428c062_b.jpg); background-repeat: repeat-x" onload='chat2()'>
    
<table width="100%"  border="0" align="center" cellspacing="0" cellpadding="0" >
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
           

              
              <table border="0" style="width:700px" cellspacing="0" class="tableback shadow" id="showprojects">
            <tr class="fonts tablehead" >
                <th style="padding: 10px">chat</th>
               
           </tr>
           <tr>
               <td>
                            <span id='chatbox'> </span> 
                    
               </td>   
            </tr>
            <tr>
                <td>
                    
                    <form action="sendchat.jsp?from=<%=employee_id%>&&to=<%=from_id1%>" enctype="multipart/form-data" method="post">
                        <input type="text" id="msg" name="msg" placeholder="Type message..." style="height:30px; width:85%">
                        <a href="javascript:send1()" class="button">Send</a> 
                       
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

