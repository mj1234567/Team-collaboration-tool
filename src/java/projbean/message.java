/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author mani
 */
public class message {
    
    private String to;
    private String from;
    private String employee_id;
    private String message;
    private String from_id;
    private String file1;
    private String date1;

    public String getDate1() {
        return date1;
    }

    public void setDate1(String date1) {
        this.date1 = date1;
    }

    public String getFile1() {
        return file1;
    }

    public void setFile1(String file1) {
        this.file1 = file1;
    }
     
    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(String employee_id) {
        this.employee_id = employee_id;
    }
    
    
     public ArrayList show(Connection con) throws Exception
     {
       ArrayList a=new ArrayList();
        
        String SQL="select * from messages where to1=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,employee_id);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            message q=new message();
            String from_id=rs.getString("from1");
            q.from_id=from_id;
            employeeFunctions e=new employeeFunctions();
            e.setId(from_id);
            e.search1(con);
            q.from=e.getName();
            q.message=rs.getString("message");
           
           
            a.add(q);
        }
        
       
        return a;  
     }
     
     public ArrayList show1(Connection con) throws Exception
     {
       ArrayList a=new ArrayList();
        
        
        
        String SQL="select * from messages where (to1=? and from1=?) or (to1=? and from1=?) order by date_of_msg";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1, to);
        ps.setString(2, from_id);
        ps.setString(3, from_id);
        ps.setString(4, to);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            message q=new message();
            String from_id=rs.getString("from1");
            q.from_id=from_id;
            employeeFunctions e=new employeeFunctions();
            e.setId(from_id);
            e.search1();
            q.from=e.getName();
            q.message=rs.getString("message");
             q.to=rs.getString("to1");
           
            a.add(q);
        }
        
        return a;  
     }
     
     public ArrayList showmessage() throws Exception
     {
       ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from messages where to1=? and from1=?";
        PreparedStatement ps=con.prepareStatement(SQL);
         ps.setString(1,employee_id);
         ps.setString(2,from_id);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            message q=new message();
            
            q.message=rs.getString("message");
           
           
            a.add(q);
        }
        
        con.close();
        return a;  
     }
 public int save() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="insert into messages(message,file1,to1,from1,date_of_msg) values(?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(SQL);
        System.out.print(file1);
         System.out.print(to);
        ps.setString(1,message);
        ps.setString(2,file1);
        ps.setString(3,to);
        ps.setString(4,from_id); 
        ps.setString(5,date1); 
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    public String getFrom_id() {
        return from_id;
    }

    public void setFrom_id(String from_id) {
        this.from_id = from_id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
