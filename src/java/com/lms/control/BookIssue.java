/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.control;

import com.lms.beans.BookBean;
import com.lms.dao.mydao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author abhishek.panja554
 */
@WebServlet(name = "BookIssue", urlPatterns = {"/BookIssue"})
public class BookIssue extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            HttpSession s1 = request.getSession();
            HttpSession s2 = request.getSession();
            mydao d = new mydao();
            BookBean cb = new BookBean();
            System.out.println("BookIssue servlet called");
            int ISBN = Integer.parseInt(request.getParameter("ISBN"));
            System.out.println("BookIssue servlet called 2"+ISBN);
            cb.setISBN(ISBN);
            int BID = d.GetBID(cb);
            String BookName = request.getParameter("BookName");
            s1.setAttribute("BookName",BookName);
            s2.setAttribute("BID",BID);
            response.sendRedirect("bookIssue.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(BookIssue.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    

}
