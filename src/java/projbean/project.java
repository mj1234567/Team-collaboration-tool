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
public class project {
    private  String name;
    private  String type;
    private  String description;
    private  String start;
    private  String deadline;
    private  String employee;
    private  String status;

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
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
        
        String SQL="select * from projects where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        flag=true;
          else
        flag=false;
        
        con.close();
        return flag;
    }
    
    
    public int complete() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="delete from projects where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
    public int save() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="insert into projects values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(2,name);
        ps.setString(1,id);
        ps.setString(3,client);
        ps.setString(4,description);
        ps.setString(5,type);
        ps.setString(6,start);
        ps.setString(7,deadline);
        ps.setString(8,"pending");
         
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    public ArrayList showprojects() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from projects";
        PreparedStatement ps=con.prepareStatement(SQL);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            project q=new project();
            q.name=rs.getString("name");
            q.id=rs.getString("id");
            
            
            
            a.add(q);
        }
        
        con.close();
        return a;
    }
    public ArrayList showAll() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from projects";
        PreparedStatement ps=con.prepareStatement(SQL);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            project q=new project();
            
            q.name=rs.getString("name");
            q.id=rs.getString("id");
            client=rs.getString("client");
            clientFunctions c=new clientFunctions();
            c.setId(client);
            c.showclient1();
            q.client=c.getName();
            q.description=rs.getString("description");
            q.type=rs.getString("type");
            q.start=rs.getString("starting_date");
            q.deadline=rs.getString("deadline");
            q.status=rs.getString("status");
            
            
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
    public ArrayList showAll1() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from projects where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1, id);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            project q=new project();
            
            q.name=rs.getString("name");
            q.id=rs.getString("id");
            client=rs.getString("client");
            clientFunctions c=new clientFunctions();
            c.setId(client);
            c.showclient1();
            q.client=c.getName();
            q.description=rs.getString("description");
            q.type=rs.getString("type");
            q.start=rs.getString("starting_date");
            q.deadline=rs.getString("deadline");
             q.status=rs.getString("status");
            
            
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
    public boolean search1() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from projects where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {flag=true;
        
        name=rs.getString("name");
        start=rs.getString("starting_date");
        deadline=rs.getString("deadline");
        }
          else
        flag=false;
        
        con.close();
        return flag;
    }
    public boolean checkleaderforproject() throws Exception
    {
        boolean flag=false;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from teams where project_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
        
        employee=rs.getString("employee_id");
        employeeFunctions e=new employeeFunctions();
        e.setId(employee);
        if(e.checkteamleader())
            flag=true;
        }
       
        
        con.close();
        return flag;
    }
    
}
