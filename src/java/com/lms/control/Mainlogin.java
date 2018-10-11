/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.control;

import com.lms.beans.CustBean;
import com.lms.dao.mydao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author abhishek.panja554
 */
@WebServlet(name = "Mainlogin", urlPatterns = {"/mainlogin"})
public class Mainlogin extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                        response.setContentType("text/html;charset=UTF-8");
                        PrintWriter out = response.getWriter();
                        response.setContentType("text/HTML");
                        String cusname= request.getParameter("cusname");
                        String cuspass= request.getParameter("cuspass");

                        CustBean cb=new CustBean();
                        cb.setEmail(cusname);
                        cb.setPassword(cuspass);

                        mydao d=new mydao();
                       
                        try {
                            ResultSet rs = d.CustomerLogin(cb);
                        
                            if(rs.next())
                            {
                                out.print("<script>alert(\"Login SuccessFul\")</script>");
                                    RequestDispatcher rd=request.getRequestDispatcher("CusDashboard.jsp");
                                    rd.include(request, response);
                            }
                        } catch (SQLException ex) {
                            Logger.getLogger(Mainlogin.class.getName()).log(Level.SEVERE, null, ex);
                        }
    }
    

    

}
