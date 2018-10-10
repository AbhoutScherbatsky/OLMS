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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author abhishek.panja554
 */
public class Adminlogin extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
		response.setContentType("text/HTML");
		String adname= request.getParameter("adname");
		String adpass= request.getParameter("adpass");
		if(adname.equals("admin")&&adpass.equals("12345"))
		{	
			System.out.println("servlet called");
			out.print("<script>alert(\"Login Successful\")</script>");
			RequestDispatcher rd=request.getRequestDispatcher("AdminPanel.jsp");
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

    


