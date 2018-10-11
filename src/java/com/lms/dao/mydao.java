/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.dao;
import com.lms.connection.myconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.lms.beans.CustBean;
import java.sql.SQLException;
/**
 *
 * @author abhishek.panja554
 */
public class mydao {
    Connection con=myconnect.dbcon();
    PreparedStatement ps = null;
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
    
    
    
}
