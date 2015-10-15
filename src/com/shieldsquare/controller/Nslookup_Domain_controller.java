package com.shieldsquare.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shieldsquare.model.Nslookup_domain_Details;
import com.shieldsquare.services.Nslookup_Domain_DAOImpl;

public class Nslookup_Domain_controller extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String a = request.getParameter("A");
		String b = request.getParameter("B");

	//	String requestURI = request.getRequestURI();
		
		// if(requestURI.equalsIgnoreCase("/DataAnalysis_Automations/Nslookup_Domain_controller"))
		if (a != null) {

			String startDateString = request.getParameter("start_date");
			String endDateString = request.getParameter("end_date");

			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
			Date startDate = null;
			Date endDate = null;
			try {
				startDate = sdf.parse(startDateString);
				endDate = sdf.parse(endDateString);
			} catch (ParseException e) {
				e.printStackTrace();
			}

			SimpleDateFormat dbFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");

			String startDateStr = null;
			String endDateStr = null;

			startDateStr = dbFormat.format(startDate);
			endDateStr = dbFormat.format(endDate);

			int sid = Integer.parseInt(request.getParameter("sid"));
			ArrayList<Nslookup_domain_Details> ipDetails = new Nslookup_Domain_DAOImpl()
					.getTopDataBots(sid, startDateStr, endDateStr);

			RequestDispatcher reqDispatch = request
					.getRequestDispatcher("nslookup_domain_show.jsp");
			request.setAttribute("ip_list", ipDetails);
			reqDispatch.forward(request, response);

		} else if (b != null) {

			String startDateString = request.getParameter("start_date");
			String endDateString = request.getParameter("end_date");

			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
			Date startDate = null;
			Date endDate = null;
			try {
				startDate = sdf.parse(startDateString);
				endDate = sdf.parse(endDateString);
			} catch (ParseException e) {
				e.printStackTrace();
			}

			SimpleDateFormat dbFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");

			String startDateStr = null;
			String endDateStr = null;

			startDateStr = dbFormat.format(startDate);
			endDateStr = dbFormat.format(endDate);

			int sid = Integer.parseInt(request.getParameter("sid"));
			ArrayList<Nslookup_domain_Details> ipDetails = new Nslookup_Domain_DAOImpl()
					.getUserAgentandOtherInfo(sid, startDateStr, endDateStr);

			RequestDispatcher reqDispatch = request
					.getRequestDispatcher("nslookup_domain_show.jsp");
			request.setAttribute("ip_list", ipDetails);
			reqDispatch.forward(request, response);

		}
	}
}
