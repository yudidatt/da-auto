package com.shieldsquare.services;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shieldsquare.dbutils.DBUtils;
import com.shieldsquare.model.IPDelete;


public class DeleteIP_DAO_Impl implements DeleteIP_DAO {

	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	@Override
	public ArrayList<IPDelete> deleteIPfromTable(int sid, String ip_add,
		 String R1, String R2, String R4, String R5,
			String A1,String Active) {
		String updatemsg;
		
		ArrayList<IPDelete> ipDetailsList = new ArrayList<IPDelete>();
		try {

			IPDelete ipd2 = new IPDelete();	
			if(Active!=null){
				con = DBUtils.getMySqlConnection();
			}
			else if(Active==null){
				con = DBUtils.getMySqlStConnection();
			}
		
			//select date and count for an IP
			//System.out.println("First Select Query");
			ps = con.prepareStatement("select dt,total_requests from ip_analysis where ip_address in (select id from ip_details where ip_address=?) and sid=?");
			ps.setString(1, ip_add);																																																							
			ps.setInt(2, sid);
			rs = ps.executeQuery();

		//	System.out.println("Executing While Loop Inside DaoImple Class");
			while (rs.next()) {
				
				IPDelete ipd = new IPDelete();
				String Date=rs.getString("dt");
				int totalRequests = rs.getInt("total_requests");
				
//			System.out.println(Date);
//			System.out.println(totalRequests);
				
				ipd.setTotal_count(totalRequests);
				
				// R1=Bad_bots
				if (R1 != null) {
					PreparedStatement ps1 = con
							.prepareStatement("update rules_summary set bad_bots =bad_bots - ? where sid=? and dt=?");

					ps1.setInt(1, totalRequests);
					ps1.setInt(2, sid);
					ps1.setString(3, Date);
					int rs1 = ps1.executeUpdate();
//					System.out.println(rs1);
					updatemsg="Updated in Bad_bots column value is__"+totalRequests;
//					System.out.println(updatemsg);
//					System.out.println();
					ipd.setUpdateMsg(updatemsg);
					ipDetailsList.add(ipd);
					
				}
			
					// R2=Data_center_bots
				if (R2 != null) {
					PreparedStatement ps1 = con
							.prepareStatement("update rules_summary set datacenter_bots =datacenter_bots - ? where sid=? and dt=?");

					ps1.setInt(1, totalRequests);
					ps1.setInt(2, sid);
					ps1.setString(3, Date);
					int rs1 = ps1.executeUpdate();
					System.out.println(rs1);
			
					updatemsg="Updated in data_center column value is__"+totalRequests;
//					System.out.println(updatemsg);
//					System.out.println();
					ipd.setUpdateMsg(updatemsg);
					ipDetailsList.add(ipd);
					
				}
				// R5=Known_UA_Bots

				if (R5 != null) {
					PreparedStatement ps1 = con
							.prepareStatement("update rules_summary set known_ua_bots =known_ua_bots - ? where sid=? and dt=?");

					ps1.setInt(1, totalRequests);
					ps1.setInt(2, sid);
					ps1.setString(3, Date);
					int rs1 = ps1.executeUpdate();
//					System.out.println(rs1);

					updatemsg="Updated in known_ua_bots column value is__"+totalRequests;
//					System.out.println(updatemsg);
//					System.out.println();
					ipd.setUpdateMsg(updatemsg);
					ipDetailsList.add(ipd);
				
				}
				
				if (R4 != null) {
					PreparedStatement ps1 = con
							.prepareStatement("update rules_summary set r_aggregator =r_aggregator - ? where sid=? and dt=?");

					ps1.setInt(1, totalRequests);
					ps1.setInt(2, sid);
					ps1.setString(3, Date);
					int rs1 = ps1.executeUpdate();
					// System.out.println(rs1);
					updatemsg = "Updated in r_aggregator column";
					// System.out.println(updatemsg);
					// System.out.println();
					ipd.setUpdateMsg(updatemsg);
					ipDetailsList.add(ipd);

				}
				if (A1 != null) {
					PreparedStatement ps1 = con
							.prepareStatement("update rules_summary set captcha =captcha - ? where sid=? and dt=?");

					ps1.setInt(1, totalRequests);
					ps1.setInt(2, sid);
					ps1.setString(3, Date);
					int rs1 = ps1.executeUpdate();
					// System.out.println(rs1);
					if(rs1>0){
					updatemsg = "Updated in captcha column";
					System.out.println(rs1);
					 System.out.println(updatemsg);
					 System.out.println();
					ipd.setUpdateMsg(updatemsg);
					}
					ipDetailsList.add(ipd);

				}

			}
				
			PreparedStatement pss = con.prepareStatement("delete from ip_analysis output deleted.total_requests as delTreq where ip_address in (select id from ip_details where ip_address=?) and sid=?");
			pss.setString(1, ip_add);
			pss.setInt(2, sid);
			int rowsDeleted = pss.executeUpdate();
			if (rowsDeleted > 0) {
				con.close();

				//int count=rs.getInt("delTreq");
//				System.out.println("Finally Count");
//				System.out.println("Ip is deleted in Ip_analysis");
				updatemsg="Ip Deleted in IP_Analysis Table";
				ipd2.setUpdateMsg(updatemsg);
			}
			ipDetailsList.add(ipd2);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		
		return ipDetailsList;
	}

}
