package com.shieldsquare.services;

import java.util.ArrayList;

import com.shieldsquare.model.Nslookup_domain_Details;

public interface Nslookup_Domain_DAO {

	public ArrayList<Nslookup_domain_Details> getTopDataBots(int sid,
			String startDateStr, String endDateStr);

	public ArrayList<Nslookup_domain_Details> getUserAgentandOtherInfo(int sid,
			String startDateStr, String endDateStr);

}
