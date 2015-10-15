package com.shieldsquare.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shieldsquare.model.IPDetails;
import com.shieldsquare.dbutils.DBUtils;

public class IPDetails_DAO_Imple implements IPDetails_DAO {
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public IPDetails_DAO_Imple() {
		// TODO Auto-generated constructor stub
		try {
			con = DBUtils.getMySqlConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public ArrayList<IPDetails> getBotDataFirstCheck(int sid,
			String startDateStr, String endDateStr) {
		// TODO Auto-generated method stub
		ArrayList<IPDetails> ipListFirst = new ArrayList<IPDetails>();
		try {
			ps = (PreparedStatement) con
					.prepareStatement("select top 5 id.ip_address,ia.ip_address,id.country_name,id.city_name,id.isp,sum(total_requests) as req from ip_analysis ia,ip_details id where dt >= ? and dt <= ? and id.id=ia.ip_address and sid=? group by id.ip_address,ia.ip_address,id.country_name,id.city_name,id.isp order by req desc");
			ps.setString(1, startDateStr);
			ps.setString(2, endDateStr);

			ps.setInt(3, sid);
			rs = ps.executeQuery();

			while (rs.next()) {
				IPDetails ipd = new IPDetails();

				String ip_Add = rs.getString("ip_address");
				String cName = rs.getString("city_name");
				String countryName = rs.getString("country_name");
				String isp = rs.getString("isp");
				int totalRequests = rs.getInt("req");
				System.out.println(cName);
				ipd.setIp_address(ip_Add);
				ipd.setCity_name(cName);
				ipd.setCountry_name(countryName);
				ipd.setIsp(isp);
				ipd.setTotalrequest(totalRequests);

				ipListFirst.add(ipd);
							}
		} catch (Exception e) {
			ipListFirst = null;
			e.printStackTrace();
		}
		return ipListFirst;
	}

	@Override
	public ArrayList<IPDetails> getBotDataSecondCheck(int sid,
			String startDateStr, String endDateStr) {
		// TODO Auto-generated method stub
		ArrayList<IPDetails> ipListSec = new ArrayList<IPDetails>();

		try {
			ps = con.prepareStatement("select  (sum(r_aggregator)+sum(bad_bots)+sum(datacenter_bots)+sum(known_ua_bots)+sum(userblacklisted_bots)) as bhr from rules_summary where dt >= ? and  dt<=? and sid=? ");

			ps.setString(1, startDateStr);
			ps.setString(2, endDateStr);
			ps.setInt(3, sid);
			rs = ps.executeQuery();

			while (rs.next()) {
				IPDetails ipd = new IPDetails();

				int bot_hits_rec = rs.getInt("bhr");
				ipd.setBot_hits_received(bot_hits_rec);

				ipListSec.add(ipd);
			}
		} catch (Exception e) {
			ipListSec = null;
			e.printStackTrace();
		}
		return ipListSec;
	}

	@Override
	public ArrayList<IPDetails> getBotDataThirdCheck(int sid,
			String startDateStr, String endDateStr) {
		ArrayList<IPDetails> ipListThird = new ArrayList<IPDetails>();

		try {

			ps = con.prepareStatement("select sum(IPADD) count from (SELECT count(DISTINCT [ip_analysis].[ip_address]) as IPADD FROM [ip_analysis] WHERE [ip_analysis].[sid] = ?  AND [ip_analysis].[dt] BETWEEN ? and ? union SELECT count(DISTINCT [aggregator_analysis].[ip_address]) as IPADD FROM [aggregator_analysis] WHERE [aggregator_analysis].[sid] = ?  AND [aggregator_analysis].[dt] BETWEEN ? and ?) a");

			ps.setInt(1, sid);
			ps.setString(2, startDateStr);
			ps.setString(3, endDateStr);
			ps.setInt(4, sid);
			ps.setString(5, startDateStr);
			ps.setString(6, endDateStr);

			rs = ps.executeQuery();

			while (rs.next()) {
				IPDetails ipd = new IPDetails();

				int bot_sig_dete = rs.getInt("count");
				System.out.println(bot_sig_dete);
				ipd.setBot_signature_detected(bot_sig_dete);
				ipListThird.add(ipd);

			}
		} catch (Exception e) {
			ipListThird = null;
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return ipListThird;
	}

	}

	
	
	