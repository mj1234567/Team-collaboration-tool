<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%      
      String module_id=request.getParameter("module_id");
       String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        String SQL="update modules set status='completed' where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1, module_id);
        ps.executeUpdate();
        SQL="update submitted_module set accepted=1 where module_id=?";
        ps=con.prepareStatement(SQL);
        ps.setString(1, module_id);
        int k=ps.executeUpdate();
        if(k==1)
        out.print("Approved");
        else
        out.print("could'nt aapprove");
%>