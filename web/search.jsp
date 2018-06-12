
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <link href="styles.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <%@include file="functions.jsp" %>
    </script>
</head>

<body style="background-color: grey">
        <table width="100%"  border="0" align="center" cellspacing="0" cellpadding="0" >
        <!--------header starts------>
        <% String s = (String) session.getAttribute("username");
            if (s == null) {
                response.sendRedirect("log in page.html");
            }
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
    <td bgcolor="#FFFFFF" align='center'>
        <form action="search1.jsp" method="post">
            <div class="formCenter">
            <p class="style14"> name of member 
                <br>

                <input type="text" name="user">
            </p>
            <p> 

                <input type="submit" class="style14" value="search">
            </p>
            </div>
        </form>
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

