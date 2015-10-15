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

import com.shieldsquare.model.IPDetails;
import com.shieldsquare.services.IPDetails_DAO_Imple;

public class IPDetailsController extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String first = request.getParameter("A");
		String second = request.getParameter("B");
		String third = request.getParameter("C");

		int sid = Integer.parseInt(request.getParameter("sid"));
		String Ip_add = request.getParameter("IP_add");

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

		SimpleDateFormat dbFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String startDateStr = null;
		String endDateStr = null;

		startDateStr = dbFormat.format(startDate);
		endDateStr = dbFormat.format(endDate);

		String requesturi = request.getRequestURI();
		System.out.println(requesturi);

		// /WeeklyMailTool/ShowIpDetails
		
		
		
			IPDetails_DAO_Imple ipdetails_DAOImpl = new IPDetails_DAO_Imple();
			if (first != null) {

				ArrayList<IPDetails> ipDetails = ipdetails_DAOImpl
						.getBotDataFirstCheck(sid, startDateStr, endDateStr);
				System.out.println(ipDetails);

				request.setAttribute("ip_list_first", ipDetails);
			}

			if (second != null) {

				ArrayList<IPDetails> ipDetailsSec = ipdetails_DAOImpl
						.getBotDataSecondCheck(sid, startDateStr, endDateStr);

				request.setAttribute("ip_list_sec", ipDetailsSec);
			}

			if (third != null) {

				ArrayList<IPDetails> ipDetailsThird = ipdetails_DAOImpl
						.getBotDataThirdCheck(sid, startDateStr, endDateStr);
				System.out.println(ipDetailsThird);
				request.setAttribute("ip_list_third", ipDetailsThird);

			}
			RequestDispatcher rd = request
					.getRequestDispatcher("ipdetails_show.jsp");
			rd.forward(request, response);
		}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		
		doGet(request,response);
		}
}

