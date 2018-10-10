/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.dao;
import com.lms.connection.myconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
/**
 *
 * @author abhishek.panja554
 */
public class mydao {
    Connection con=myconnect.dbcon();
    PreparedStatement ps = null;
    int result;
    
    
}
