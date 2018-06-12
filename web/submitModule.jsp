
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <link href="styles.css" rel="stylesheet" type="text/css">
        <link href="dcalendar.picker.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <script src="dcalendar.picker.js" type="text/javascript" ></script>
        
        <%@include file="functions.jsp"%>
        <script>
            $(document).ready(
                    function () {
                        $("#datepicker").dcalendarpicker();
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

                String module_id = request.getParameter("module_id");
                String employee_id = request.getParameter("employee_id");
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
                        <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>  
                        <div>
                            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Submit Module</span>
                        </div><br><br> 
                        <form id="form1" action="submitModule1.jsp" enctype="multipart/form-data" method="post">
                            <div class="formCenter"> <br>
                                <p>
                                    <b class="style14">Name of Module</b>
                                    <input type="text" name="name" id="textfield" class="required data">
                                </p>
                                <p>
                                    <b class="style14">Description</b>
                                    <textarea rows="10" cols="50" name="description"  class="required data"></textarea>

                                </p>
                                <p>
                                    <b class="style14">Employee id</b>
                                    <input type="text" name="employee_id"  class="required data" value="<%= employee_id%>" readonly="">
                                </p>
                                <p>
                                    <b class="style14">Module id</b>
                                    <input type="text" name="module_id"  class="required data"  value="<%= module_id%>" readonly="">
                                </p>
                                <p>
                                    <b class="style14">Upload File</b>
                                    <input type="file" name="file1" class="required ">
                                </p>
                                 <p>
                                    <b class="style14">Submission date</b>
                                    <input type="text" name="submission_date"  class="required data" id="datepicker">
                                </p>
                                <p>

                                    <input type="submit"  class="required button links">
                                </p>

                            </div>  
                        </form>
                    </div>
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

