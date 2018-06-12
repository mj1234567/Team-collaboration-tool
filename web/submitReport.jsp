
<%@page import="projbean.reports"%>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
     <link href="styles.css" rel="stylesheet" type="text/css">
       <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
       
  
         <%@include file="functions.jsp" %> 
        
   
         
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
      
        
    </head>
    <%@include file="main table.jsp" %>
    <!--------header starts------>
            <% String s = (String) session.getAttribute("username");
                String s1 = request.getParameter("employee_id");
                String s2 = request.getParameter("module_id");

                if (s == null) {
                    response.sendRedirect("log in page.html");
                }
            %>
            <%@include file="employee header.jsp" %>    

            <!-------header ends---->
            <tr>
                <!------side menu starts------>
                <%@include file="employee side menu.jsp" %>
                <!------side menu ends---->
                <!-------mid section starts------>
                <td bgcolor="#eee" align="center">
                    <div style="display: block; height: 800px; position: relative;z-index: 1;">
                        <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                        <div>
                            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Submit Report</span>
                        </div><br><br>
                        <form action="submitReport1.jsp" method="post"id="form1" enctype="multipart/form-data">
                             <div class="formCenter"> 
                                 <br>
                                
                                <p>
                                    <b class="style14">Name of Report</b>
                                    <input type="text" name="name" class="required data">
                                </p>
                                <p>
                                    <b class="style14">Description</b>
                                    <textarea name="description" rows="10" cols="50" class="required data">  </textarea>
                                </p>
                                <p>
                                    <b class="style14">Employee id</b>
                                    <input type="text" name="employee_id_member"  class="required data" value="<%=s1%>" readonly>  
                                </p>
                                <p>
                                    <b class="style14">Module id</b>
                                    <input type="text" name="module_id"  class="required data" value="<%=s2%>" readonly>  
                                <p>
                                    <b class="style14">Upload File</b>
                                    <input type="file" name="file1" id="file1" class="required ">
                                </p>
                                <p>

                                    <input type="submit"  class="required button links">
                                </p>

                            </div>  
                        </form>
                    </div>
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

