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
public class modules {
    private  String name;
    private  String type;
    private  String description;
    private  String start;
    private  String deadline;
    private  String project;
    private  String status;

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    private  String client;
    private  String id;
    
    public boolean search() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from modules where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {  id=rs.getString("name");
          flag=true;}
          else
        { flag=false;}
        
        con.close();
        return flag;
    }
   
    
     public ArrayList show() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from modules where project_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,project);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            modules q=new modules();
            
            q.id=rs.getString("id");
            q.name=rs.getString("name");
            q.start=rs.getString("starting_date");
            q.deadline=rs.getString("deadline");
            q.status=rs.getString("status");
            a.add(q);
        }
        
        con.close();
        return a;
    }
     public void startdate() throws Exception
    {
       
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from modules where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
           
            
            
            start=rs.getString("starting_date");
        }
        
        con.close();
        
    }
     
     public ArrayList showpending() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from modules where project_id=? and status='pending'";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,project);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            modules q=new modules();
            
            q.id=rs.getString("id");
            q.name=rs.getString("name");
            q.start=rs.getString("starting_date");
            q.deadline=rs.getString("deadline");
            q.status=rs.getString("status");
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
      public boolean checkpending(String x) throws Exception
    {
       boolean b=false;
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from modules where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,x);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
           
            
            if(rs.getString("status").equalsIgnoreCase("pending"));
             b=true;
        }
        
        con.close();
        return b;
    }
    
     
     
    public int save() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="insert into modules values(?,?,?,?,?,?,?,?,0)";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(2,project);
        ps.setString(1,id);
        ps.setString(3,name);
        ps.setString(4,description);
        ps.setString(5,status);
        ps.setString(6,start);
        ps.setString(7,deadline);
        ps.setString(8,type);
         
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
   
   
    
}
