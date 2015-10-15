package com.shieldsquare.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shieldsquare.model.IPDelete;
import com.shieldsquare.services.DeleteIP_DAO_Impl;

public class Delete_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String R1=request.getParameter("R1");
		String R2=request.getParameter("R2");
		String R4=request.getParameter("R4");
		String R5=request.getParameter("R5");
		String A1=request.getParameter("A1");
		String Active=request.getParameter("Active");
		int sid=Integer.parseInt(request.getParameter("sid"));
		String ip_add=request.getParameter("ipaddress");
		
		
		DeleteIP_DAO_Impl deleteIPObj=new DeleteIP_DAO_Impl();
		ArrayList<IPDelete>ipdelete=deleteIPObj.deleteIPfromTable(sid, ip_add,R1,R2,R4,R5,A1,Active);
	
		RequestDispatcher rd=request.getRequestDispatcher("delete_show.jsp");
		request.setAttribute("ip_delete", ipdelete);
		rd.forward(request, response);
		
		
		
		
	}
		
		
		
	}
