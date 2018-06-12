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
public class clientFunctions{

    
    private String user;
    private String pass;
   
    private String country;
   
    private String status;
    private String contact;
    private String name;
    private String Id;
   
    

    public String getCurrent() {
        return current;
    }

    public void setCurrent(String current) {
        this.current = current;
    }

    public String getNew1() {
        return new1;
    }

    public void setNew1(String new1) {
        this.new1 = new1;
    }
     private String current;
      private String new1;
public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }
  
   
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    
     public boolean changepassword() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");
        String a=""; boolean b=false;
        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select password from employee where name=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1, user);
        ResultSet r=ps.executeQuery(); 
        while(r.next())
        {
            a=r.getString("password");
        }
        if(current.equals(a))
        {SQL="update clients set password=? where name=?";
         ps=con.prepareStatement(SQL);
         ps.setString(1,new1);
         ps.setString(2,user);
         ps.executeUpdate();
         b=true;
        }
        con.close();
        return b;
    }
    
    
    
     
    
   public ArrayList showclient() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from clients";
        PreparedStatement ps=con.prepareStatement(SQL);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            clientFunctions q=new clientFunctions();
            
             q.name=rs.getString("name");
             q.Id=rs.getString("id");
            
            
            a.add(q);
        }
        
        con.close();
        return a;
    }  
    public void showclient1() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from clients where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1, Id);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            
            
             name=rs.getString("name");
             Id=rs.getString("id");
            
            
            
        }
        
        con.close();
        
    }  
   
   
    
     
     
     
}

