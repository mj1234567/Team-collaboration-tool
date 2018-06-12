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
public class editmember{

    
    private String user;
    private String file1;

    public String getFile1() {
        return file1;
    }

    public void setFile1(String file1) {
        this.file1 = file1;
    }
    private String pass;
     private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
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

   
   
     public int save() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="insert into member values(?,?,?,?,?,?,1,?,?,?,?,?,0,?,?)";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,Id);
        ps.setString(2,user);
        ps.setString(3,pass);
        ps.setString(4,gender);
        ps.setString(5,country);
        ps.setString(6,address);
         ps.setString(7,name);
        
         ps.setString(8,father);
         ps.setString(9,qualification);
         ps.setString(10,married);
         ps.setString(11,contact);
          ps.setString(12,file1);
         ps.setString(13,email);
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
      
    
     public int delete() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="delete from member where username=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,user);
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
     public int modify() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="update member set name=?,password=?,father_name=?,highest_qualification=?,gender=?,marital_status=?,contact_number=?,address=?,country=? where username=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,name);
        
        
        ps.setString(2,pass);
        ps.setString(3,father);
         ps.setString(4,qualification);
         ps.setString(5,gender);
         ps.setString(6,married);
         ps.setString(7,contact);
         ps.setString(8,address);
         ps.setString(9,country);
         ps.setString(10,user);
         
        
        
         
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
    
     public boolean changepassword() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");
        String a=""; boolean b=false;
        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select password from admin where username=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1, user);
        ResultSet r=ps.executeQuery(); 
        while(r.next())
        {
            a=r.getString("password");
        }
        if(current==null||new1==null)
            b=false;
        else if(current.equals(a))
        {SQL="update admin set password=? where username=?";
         ps=con.prepareStatement(SQL);
         ps.setString(1,new1);
         ps.setString(2,user);
         ps.executeUpdate();
         b=true;
        }
        con.close();
        return b;
    }

     public boolean changepassword1() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");
        String a=""; boolean b=false;
        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select password from member where employee_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,Id);
        ResultSet r=ps.executeQuery(); 
        if(r.next())
        {
            a=r.getString("password");
        }
        if(current==null||new1==null)
            b=false;
        else if(current.equals(a))
        {SQL="update member set password=? where employee_id=?";
         ps=con.prepareStatement(SQL);
         ps.setString(1,new1);
         ps.setString(2,Id);
         ps.executeUpdate();
         b=true;
        }
        con.close();
        return b;
    }
     
     public int disable() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="update member set status=0 where username=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        
        
        ps.setString(1,user);
         
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
      
      
     public int enable() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="update member set status=1 where username=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        
        
        ps.setString(1,user);
         
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
    
     public ArrayList showAll() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from member";
        PreparedStatement ps=con.prepareStatement(SQL);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            editmember q=new editmember();
            q.user=rs.getString("username");
            q.pass=rs.getString("password");
            q.gender=rs.getString("gender");
            q.address=rs.getString("address");
            q.country=rs.getString("country");
            q.name=rs.getString("name");
            q.Id=rs.getString("employee_id");
            q.father=rs.getString("father_name");
            q.qualification=rs.getString("highest_qualification");
            q.married=rs.getString("marital_status");
            q.contact=rs.getString("contact_number");
            q.status=rs.getString("status");
            
            
            
            a.add(q);
        }
        
        con.close();
        return a;
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
    
     public boolean searchclient() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from clients where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,Id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {
            flag=true;
            user=rs.getString("name");      
            country=rs.getString("country");
            contact=rs.getString("contact");
            
        }
        else
            flag=false;
        
        con.close();
        return flag;
    }
    
     public int saveclient() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="insert into clients values(?,?,?,?,?,1)";
        PreparedStatement ps=con.prepareStatement(SQL);
          
        ps.setString(1,Id); 
        ps.setString(2,user);
        ps.setString(3,country);
         ps.setString(4,contact);
         ps.setString(5,pass);
     
        
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
     
     
     
     
}

