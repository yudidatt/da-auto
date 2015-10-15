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

import com.shieldsquare.model.Insight_details;
import com.shieldsquare.services.Insight_DAO_Impl;

public class InsightMailController extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String a = request.getParameter("A");
		String b = request.getParameter("B");
		String c = request.getParameter("C");
		String d = request.getParameter("D");
		String e = request.getParameter("E");
		String f = request.getParameter("F");

		String requestURI = request.getRequestURI();
		// System.out.println(uri);

		// /InsightMailTemplateTools/showSection


			if (a != null) {

				int sid = Integer.parseInt(request.getParameter("sid"));
				String ipadd = request.getParameter("ipadd");
				String date = request.getParameter("Date");

				ArrayList<Insight_details> Insight_details1 = new Insight_DAO_Impl()
						.getIpandTotalHits(sid, ipadd, date);

				request.setAttribute("ip_list1", Insight_details1);

				/*
				 * RequestDispatcher reqDispatch = request
				 * .getRequestDispatcher("show.jsp");
				 * 
				 * reqDispatch.forward(request, response);
				 */
			}

			if (b != null) {

				int sid = Integer.parseInt(request.getParameter("sid"));
				String ipadd = request.getParameter("ipadd");
				String date = request.getParameter("Date");

				ArrayList<Insight_details> Insight_details2 = new Insight_DAO_Impl()
						.getNumberofHitsCountforGivenfIP(sid, ipadd, date);

				request.setAttribute("ip_list2", Insight_details2);

				/*
				 * RequestDispatcher reqDispatch = request
				 * .getRequestDispatcher("show.jsp");
				 * 
				 * reqDispatch.forward(request, response);
				 */
			}

			if (c != null) {

				int sid = Integer.parseInt(request.getParameter("sid"));
				String ipadd = request.getParameter("ipadd");
				String date = request.getParameter("Date");

				ArrayList<Insight_details> Insight_details3 = new Insight_DAO_Impl()
						.getUrlandCount(sid, ipadd, date);

				request.setAttribute("ip_list3", Insight_details3);

				/*
				 * RequestDispatcher reqDispatch = request
				 * .getRequestDispatcher("show.jsp");
				 * 
				 * reqDispatch.forward(request, response);
				 */
			}

			
			
			
			if (d != null) {
				int sid = Integer.parseInt(request.getParameter("sid"));
				String ipadd = request.getParameter("ipadd");
				String date = request.getParameter("Date");

				ArrayList<Insight_details> Insight_details4 = new Insight_DAO_Impl()
						.getSectionDetails(sid, ipadd, date);

				request.setAttribute("ip_list4", Insight_details4);

				/*
				 * RequestDispatcher reqDispatch = request
				 * .getRequestDispatcher("show.jsp");
				 * 
				 * reqDispatch.forward(request, response);
				 */
			}

			if (e != null) {

				int sid = Integer.parseInt(request.getParameter("sid"));
				String ipadd = request.getParameter("ipadd");
				String date = request.getParameter("Date");

				ArrayList<Insight_details> Insight_details5 = new Insight_DAO_Impl()
						.getPeekHourHitsCountforIP(sid, ipadd, date);

				request.setAttribute("ip_list5", Insight_details5);
				/*
				 * RequestDispatcher reqDispatch = request
				 * .getRequestDispatcher("show.jsp");
				 * request.setAttribute("ip_list", ipdetails);
				 * reqDispatch.forward(request, response);
				 */
			}

			RequestDispatcher reqDispatch = request
					.getRequestDispatcher("insight_show.jsp");

			reqDispatch.forward(request, response);
		}

	
	
			}
