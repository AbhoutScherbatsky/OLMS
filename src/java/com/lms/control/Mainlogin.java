/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.control;

import java.io.IOException;
import java.io.PrintWriter;
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
		if(cusname.equals("admin")&&cuspass.equals("12345"))
		{	
			System.out.println("servlet called");
			out.print("<script>alert(\"Login Successful\")</script>");
			RequestDispatcher rd=request.getRequestDispatcher("CusDashboard.jsp");
			rd.forward(request, response);
                        
		}
		else 
		{
			out.print("<script>alert(\"Wrong Credentials\")</script>");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
        }
    

    

}
