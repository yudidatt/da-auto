package com.shieldsquare.services;

import java.util.ArrayList;

import com.shieldsquare.model.IPDetails;

public interface IPDetails_DAO {

	public ArrayList<IPDetails> getBotDataFirstCheck(int sid,String startDateStr,String endDateStr);
	public ArrayList<IPDetails> getBotDataSecondCheck(int sid,String startDateStr,String endDateStr);
	public ArrayList<IPDetails> getBotDataThirdCheck(int sid,String startDateStr,String endDateStr);

	
}
