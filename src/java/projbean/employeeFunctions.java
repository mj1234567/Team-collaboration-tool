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
public class employeeFunctions{

    
    private String user;
     private String image;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    private String pass;
    private String gender;
    private String country;
    private String address;
    private String status;
    private String contact;
    private String name;
    private String Id;
    private String father;
    private String qualification;
    private String married;
    private String project;

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }
    

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
    public String getFather() {
        return father;
    }

    public void setFather(String father) {
        this.father= father;
    }
    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification= qualification;
    }
    public String getMarried() {
        return married;
    }

    public void setMarried(String married) {
        this.married = married;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

   
   
     
    
     
     public int modify() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="update member set name=?,Id=?,pass=?,father=?,qualification=?,gender=?,married=?,contact=?,address=?,country=? where username=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,name);
        ps.setString(2,Id);
        
        ps.setString(3,pass);
        ps.setString(4,father);
         ps.setString(5,qualification);
         ps.setString(6,gender);
         ps.setString(7,married);
         ps.setString(8,contact);
         ps.setString(9,address);
         ps.setString(10,country);
         ps.setString(11,user);
         
        
        
         
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
    
     public boolean changepassword() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");
        String a=""; boolean b=false;
        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select password from employee where username=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1, user);
        ResultSet r=ps.executeQuery(); 
        while(r.next())
        {
            a=r.getString("password");
        }
        if(current.equals(a))
        {SQL="update member set password=? where username=?";
         ps=con.prepareStatement(SQL);
         ps.setString(1,new1);
         ps.setString(2,user);
         ps.executeUpdate();
         b=true;
        }
        con.close();
        return b;
    }
    
    
    
     
    public boolean search() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from member where username=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,user);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
            flag=true;
            user=rs.getString("username");
            pass=rs.getString("password");
            gender=rs.getString("gender");
            country=rs.getString("country");
            address=rs.getString("address");
            name=rs.getString("name");
            Id=rs.getString("employee_Id");
            father=rs.getString("father_name");
            qualification=rs.getString("highest_qualification");
            married=rs.getString("marital_status");
            contact=rs.getString("contact_number");
            
        }
        else
            flag=false;
        
        con.close();
        return flag;
    }
    
     public boolean search1() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from member where employee_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,Id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
            flag=true;
            user=rs.getString("username");
            pass=rs.getString("password");
            gender=rs.getString("gender");
            country=rs.getString("country");
            address=rs.getString("address");
            name=rs.getString("name");
            Id=rs.getString("employee_Id");
            father=rs.getString("father_name");
            qualification=rs.getString("highest_qualification");
            married=rs.getString("marital_status");
            contact=rs.getString("contact_number");
            
        }
        else
            flag=false;
        
        con.close();
        return flag;
    }
    
     
      public boolean search1(Connection con) throws Exception
    {
        boolean flag;
        
        String SQL="select * from member where employee_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,Id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
            flag=true;
            user=rs.getString("username");
            pass=rs.getString("password");
            gender=rs.getString("gender");
            country=rs.getString("country");
            address=rs.getString("address");
            name=rs.getString("name");
            Id=rs.getString("employee_Id");
            father=rs.getString("father_name");
            qualification=rs.getString("highest_qualification");
            married=rs.getString("marital_status");
            contact=rs.getString("contact_number");
            
        }
        else
            flag=false;
        
    
        return flag;
    }
    
    public boolean checkteamleader() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from teams where employee_id=? and project_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,Id);
         ps.setString(2,project);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
           
            
            String a=rs.getString("team_leader");
            if(a.equalsIgnoreCase("1"))
                flag=true;
            else
                flag=false;
        }
        else
            flag=false;
        
        con.close();
        return flag;
    } 
    
 public boolean showimage() throws Exception
    {
        boolean flag;
         String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        String SQL="select * from member where employee_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,Id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
            flag=true;
            name=rs.getString("name");
            image=rs.getString("image");
            contact=rs.getString("contact_number");
        }
        else
            flag=false;
        
    
        return flag;
    }
       
     
     
     
}

