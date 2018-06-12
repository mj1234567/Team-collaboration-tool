
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styles.css" rel="stylesheet" type="text/css">
<link href="employee slider.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/animate.css" />
		<link rel="stylesheet" type="text/css" href="css/mockup4.css" />
		<script src="modernizr.custom.js"></script>
<script src="jquery-1.12.3.min.js"></script>
<script src="jquery.validate.js"></script>
<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="jssor.slider.mini.js"></script>
<%@include file="functions.jsp" %>
<%@include file="slider.jsp" %>
<%@include file="slider4.jsp" %>
    </head>
    <%@include file="main table.jsp" %>
    <!--------header starts------>
            <% String s = (String) session.getAttribute("username");
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
                <td bgcolor="#FFFFFF" valign="top" align="left"> &nbsp;
                <%@include file="slider1.jsp" %>
                <%@include file="slider5.jsp" %>
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

