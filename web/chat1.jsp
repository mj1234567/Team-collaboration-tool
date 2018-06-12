<%@page import="projbean.DataConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbean.message"%>
<%   
 String employee_id=(String)session.getAttribute("id");
                  String from_id=request.getParameter("from_id");
               //    String con=request.getParameter("con");
                  String from_id1=from_id;
    message t = new message();
            t.setTo(employee_id);
            t.setFrom_id(from_id);
            Connection con= DataConnection.getConnection();
            ArrayList a = t.show1(con);
            if (a.size() == 0)
            { out.println("No data found");
            }
            else { %>
              
                <textarea rows="20" cols="10" style="height:300px; font-family: cursive;color:#0A79B6" id="textarea_id">       
                  
           
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
con.close();
            %>
                </textarea>
 <% } %>