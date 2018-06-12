
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
                    function () {
                       
                        $("#form1").validate(
                                {
                                    rules:
                                    {
                                        
                                    }
                                }

                        );

                    });
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
            <tr>
                <!------side menu starts------>
                <%@include file="side menu.jsp" %>
                <!------side menu ends---->
                <!-----mid section starts--->

                <td align="center" bgcolor="#eee" >
                    
                    <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/d.jpg);" class="blur-back"></div>  
            <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Add Client</span>
             </div><br><br>
                       
                            <form name="form1" id="form1" method="post" action="addclient1.jsp">
                                 <div class="formCenter">
                                <p>
                                    <b class="style14">Name Of Client</b>
                                    <input type="text" name="name" id="textfield" class="required data">
                                </p>
                                <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <b class="style14">Password</b>
                                    <input type="text" name="pass" id="textfield" class="required data">
                                </p>
                               
                               

                                <p class="style14">
                                    <label> <b class="style14">Country</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <select name="country" class="style9" id="select">
                                            <option>India</option>
                                            <option>USA</option>
                                            <option>Brazil</option>
                                            <option>Australia</option>
                                        </select>
                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </p>
                                <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <b class="style14">Contact</b>
                                    <input type="text" name="contact" id="textfield" class="required data">
                                </label>

                                <p class="style14">
                                    <label class="style14">
                                        <input name="button" type="submit" class="style14" id="button" value="Add">
                                    </label>
                                </p>
                                 </div>
                            </form> </div> </div>  </td>








                <!----mid section ends------->
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body>
</html>

