/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.control;

import com.lms.beans.BookBean;
import com.lms.beans.CustBean;
import com.lms.dao.mydao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author abhishek.panja554
 */
@WebServlet(name = "Issue", urlPatterns = {"/Issue"})
public class Issue extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int BID = Integer.parseInt(request.getParameter("bookid"));
            int CID = Integer.parseInt(request.getParameter("customerid"));
            String ReturnDate = request.getParameter("returndate");
            mydao d = new mydao();
            BookBean bb = new BookBean();
            CustBean cb = new CustBean();
            bb.setBID(BID);
            cb.setCID(CID);
            try {
                d.IssueBook(bb, cb, ReturnDate);
            } catch (SQLException ex) {
                Logger.getLogger(Issue.class.getName()).log(Level.SEVERE, null, ex);
            }
            out.print("<script>alert(\"Book Successfully Issued\")</script>");
            response.sendRedirect("CusDashboard.jsp");
        }
    }

    

}
