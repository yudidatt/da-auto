package com.shieldsquare.services;

import java.net.UnknownHostException;
import java.util.ArrayList;

import com.shieldsquare.model.Insight_details;



public interface Insight_DAO {

	ArrayList<Insight_details> getIpandTotalHits(int sid,String ipadd, String date) throws UnknownHostException;
	ArrayList<Insight_details> getNumberofHitsCountforGivenfIP(int sid, String ipadd,String date ) throws UnknownHostException;
	ArrayList<Insight_details> getUrlandCount(int sid,String ipadd, String date) throws UnknownHostException;
	ArrayList<Insight_details> getSectionDetails(int sid,String ipadd, String date) throws UnknownHostException;
	ArrayList<Insight_details> getPeekHourHitsCountforIP(int sid,String ipadd, String date) throws UnknownHostException; 
	
}
