



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
                  
            <%@include file="employee header.jsp" %>
            <!-------header ends---->
            <tr>
                <!------side menu starts------>
                <%@include file="employee side menu.jsp" %>
                <!------side menu ends---->
                <!-----mid section starts--->
            
               <td valign="middle" bgcolor="#eee" align="center">
                     <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Collaborative-Team-e1417990564541.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Add Module</span>
                         </div><br>
                        <div style='display: block; border: 2px #000 solid; width: 500px; margin: auto; padding-top: 30px'>
                   <form name="form1" id="form1" method="post" action="addmodule1.jsp">
                        <div class="formCenter">
                            <br><br>
                            <b class="style14">Name of project</b>
                        <select name="name of project" class="style9" id="select" class="required data">
                                      <%
                                         project t1 = new project(); 
                                          ArrayList a1 = t1.showprojects();
                                           if (a1.size() == 0)
                                           out.println("No data found");
                                                 else {
                                                     String name,id;
                                                       Iterator k = a1.iterator();
                                                        while (k.hasNext()) {
                                                       project w = (project)k.next();
                                                                 name=w.getName();
                                                                 id=w.getId();
                                                                
                                           
                                                 %>
                                                
                                                     <option value="<%=id%>"><%= name %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                                 <% } 
} %>  
                                               </select>
                        
                        <p>
                            <b class="style14">Module Name</b>
                            <input type="text" name="name" id="textfield" class="required data">
                        </p>
                                
                                      
                                       <p class="style14">
                            <label> 
                                <b class="style14">Type of project
                                </b>
                                <select name="type of project" class="style9" id="select" class="required data">
                                    <option>Web based Software</option>
                                    <option>Mobile Application</option>
                                    <option>Stand alone Desktop based</option>
                                    <option>Website</option>
                                </select>
                          </label>
                        </p>
                         
                         
                        
                         
                            
                                
                       
                       
                                    <b class="style14">Description of Module &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                                    <textarea name="description" id="textarea" cols="50" rows="15" class="required" ></textarea>
                                    
                         <p>
                            <b class="style14">Status</b>
                            <input type="text" name="status" id="textfield" class="required data " value="pending">
                        </p>
                         <p>
 


 
                             
                            <b class="style14">Starting Date</b>
                            <input type="text" name="starting date" id="date" class="required datepicker">
                         </p>
                         <p>
                            <b class="style14">Deadline Date</b>
                            <input type="text" name="deadline" id="date1" class="required  datepicker">
                        </p>
                         
                       <p class="style12">
                            <label class="style12"> 
                                <input name="button" type="submit" class="fonts" id="button" value="Add">
                            </label>
                        </p>
                        </div>
                    </form>  
                    </div>
                     </div>
                </td>





           


                <!----mid section ends------->
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body>
</html>

