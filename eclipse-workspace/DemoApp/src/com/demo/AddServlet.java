package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpRetryException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		int i=Integer.parseInt(req.getParameter("num1"));
		int j=Integer.parseInt(req.getParameter("num2"));
		int k = i+j;
		
		req.setAttribute("k", k);
		
		k = k*k;
		
		RequestDispatcher rd = req.getRequestDispatcher("SquareServlet");
		rd.forward(req, res);
		
		//1. Request Dispature -- Interface. 
		//2. Send Redirect.
	}
}
