<%@page import="projbean.message"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<% String a= request.getParameter("employee_id");
    String b= request.getParameter("from_id");
    String msg=request.getParameter("msg");
   Date d=new Date();
    SimpleDateFormat f1=new SimpleDateFormat("dd/MM/yyyy");
    String date1=f1.format(d); 
   
    message s1=new message();
     s1.setMessage(msg);
    
     s1.setTo(b);
     s1.setFrom_id(a);
     s1.setDate1(date1);
  int chk=s1.save();
  out.print(chk);
  
%>