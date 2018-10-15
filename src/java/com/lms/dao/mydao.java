/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.dao;
import com.lms.beans.BookBean;
import com.lms.connection.myconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.lms.beans.CustBean;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author abhishek.panja554
 */
public class mydao {
    Connection con=myconnect.dbcon();
    PreparedStatement ps = null;
    Statement st=null;
    int result;
    ResultSet rs=null;
    
    public int checkEmail(String email){
        int chk=0;
        
        String sql="select * from Customer where Email=?";
        try {
            ps=con.prepareStatement(sql);
            ps.setString(1,email);
            rs=ps.executeQuery();
            if(rs.next())
                chk=1;
        } catch(Exception e){
            e.printStackTrace();
            
        }
        return chk;
    }
    
    public ResultSet CustomerLogin(CustBean b) throws SQLException{
        String sql="select CID, Cname from Customer where Email=? and Password=?";
        ps=con.prepareStatement(sql);
        ps.setString(1,b.getEmail());
        ps.setString(2,b.getPassword());
        rs=ps.executeQuery();
        return rs;
        
    }
    
    public String GetUname(CustBean a) throws SQLException
    {
        String sql="select Cname from Customer where Email=?";
        ps=con.prepareStatement(sql);
        ps.setString(1,a.getEmail());
        rs=ps.executeQuery();
        rs.next();
        String uname=rs.getString("Cname");
        System.out.println(uname);
        return uname;
    }
    
    public ResultSet GetBookDetails() throws SQLException
    {
        String sql = "select * from books";
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        return rs;
    }
    
    public int GetBID(BookBean b) throws SQLException
    {
        String sql =" select BID from books where ISBN =?";
        ps=con.prepareStatement(sql);
        ps.setInt(1,b.getISBN());
        rs=ps.executeQuery();
        rs.next();
        int BID =rs.getInt("BID");
        return BID;
    }
    
    public void IssueBook(BookBean b,CustBean a,String c) throws SQLException
    {
        String sql="insert into issued values(?,?,?)";
        ps=con.prepareStatement(sql);
        ps.setInt(1,b.getBID());
        ps.setInt(2,a.getCID());
        ps.setString(3,c);
        ps.executeUpdate();
    }
    
    
    public ResultSet GetCustomerDetails( CustBean cb) throws SQLException
    {
        String sql = "select * from customer where Email =? and Password = ? ";
        ps=con.prepareStatement(sql); 
        ps.setString(1,cb.getEmail());
        ps.setString(2,cb.getPassword());
        rs=ps.executeQuery();
        rs.next();
        return rs;
    }
}
