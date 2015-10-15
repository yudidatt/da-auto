package com.shieldsquare.services;

import java.util.ArrayList;
import java.io.IOException;
import java.sql.*;

import javax.naming.NamingException;




import com.shieldsquare.dbutils.DBUtils;

import com.shieldsquare.model.Nslookup_domain_Details;


public class Nslookup_Domain_DAOImpl implements Nslookup_Domain_DAO {



	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public ArrayList<Nslookup_domain_Details> getTopDataBots(int sid,String startDateStr,String endDateStr)
			 {
		
		ArrayList<Nslookup_domain_Details> ipDetailsList = new ArrayList<Nslookup_domain_Details>();
		try {
			con = DBUtils.getMySqlConnection();
			ps = (PreparedStatement) con
					.prepareStatement("select id.ip_address,ia.ip_address,id.country_name,id.city_name,id.isp,id.domain,sum(total_requests) as req from ip_analysis ia,ip_details id where dt >= ? and dt <= ? and id.id=ia.ip_address and sid=? group by id.ip_address,ia.ip_address,id.country_name,id.city_name,id.isp,id.domain order by req desc");
			ps.setString(1, startDateStr);
			ps.setString(2, endDateStr);

			ps.setInt(3, sid);
			rs = ps.executeQuery();

			while (rs.next()) {
				Nslookup_domain_Details ipd = new Nslookup_domain_Details();
				
				String ip_Add = rs.getString("ip_address");
				String cName = rs.getString("city_name");
				String countryName = rs.getString("country_name");
				String isp = rs.getString("isp");
				int totalRequests = rs.getInt("req");
				String domainname=rs.getString("domain");
			//	String datee=rs.getString("dt");
				

				ipd.setIp_address(ip_Add);
				ipd.setCity_name(cName);
				ipd.setCountry_name(countryName);
				ipd.setIsp(isp);
				ipd.setTotalrequest(totalRequests);
				ipd.setDomain_name(domainname);
			//ipd.setDate(datee);
		
/***
 *  Calling nslookup method and passing ip_add value which store ip address 
 *  Setting nslookup value 	
*/
				String nslookupp=nslookup(ip_Add);
				ipd.setNslookup(nslookupp);
				
				
				ipDetailsList.add(ipd);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ipDetailsList;
	}

	
	//NSLookup Method which return nslookupvalue for given IP_address

	public static String nslookup(String args) throws IOException,NamingException {
		String retVal = null;
		String ip = args;
		if(ip == null)
			return retVal;
		final String[] bytes = ip.split("\\.");
		if (bytes.length == 4) {
			try {
				final java.util.Hashtable<String, String> env = new java.util.Hashtable<String, String>();
				env.put("java.naming.factory.initial","com.sun.jndi.dns.DnsContextFactory");
				final javax.naming.directory.DirContext ctx = new javax.naming.directory.InitialDirContext(env);
				final String reverseDnsDomain = bytes[3] + "." + bytes[2] + "."+ bytes[1] + "." + bytes[0] + ".in-addr.arpa";
				final javax.naming.directory.Attributes attrs = ctx
				.getAttributes(reverseDnsDomain,
						new String[] { "PTR", });
	
				for (final javax.naming.NamingEnumeration<? extends javax.naming.directory.Attribute> ae = attrs
				.getAll(); ae.hasMoreElements();) {
			
					final javax.naming.directory.Attribute attr = ae.next();
					final String attrId = attr.getID();			
					
					for (final java.util.Enumeration<?> vals = attr.getAll(); vals
					.hasMoreElements();) {
				String value = vals.nextElement().toString();
				if ("PTR".equals(attrId)) {
					final int len = value.length();
					if (value.charAt(len - 1) == '.') {
						// Strip out trailing period
						value = value.substring(0, len - 1);
					}
					retVal = value;
				}
			}
		}
		ctx.close();
	} catch (final javax.naming.NamingException e) {
		// No reverse DNS that we could find, try with InetAddress
		retVal = "No reverse DNS found"; // NO-OP
	}
}
		if (null == retVal) {
			try {
				retVal = java.net.InetAddress.getByName(ip)
				.getCanonicalHostName();
			} catch (final java.net.UnknownHostException e1) {
				retVal = ip;
			}
		}
		return retVal;
	}
	
	
	
	public ArrayList<Nslookup_domain_Details> getUserAgentandOtherInfo(int sid,String startDateStr,String endDateStr){
		
		System.out.println("hellooooooooo");
		
		ArrayList<Nslookup_domain_Details> ipDetailsList = new ArrayList<Nslookup_domain_Details>();
		try {
			con = DBUtils.getMySqlConnection();
			ps = (PreparedStatement) con
					.prepareStatement("select id.ip_address,ia.ip_address,id.country_name,id.city_name,id.isp,id.domain,sum(total_requests) as req from ip_analysis ia,ip_details id where dt >= ? and dt <= ? and id.id=ia.ip_address and sid=? group by id.ip_address,ia.ip_address,id.country_name,id.city_name,id.isp,id.domain order by req desc");
			ps.setString(1, startDateStr);
			ps.setString(2, endDateStr);

			ps.setInt(3, sid);
			rs = ps.executeQuery();

			while (rs.next()) {
				Nslookup_domain_Details ipd = new Nslookup_domain_Details();

				String cName = rs.getString("city_name");
				String countryName = rs.getString("country_name");
				String isp = rs.getString("isp");
				int totalRequests = rs.getInt("req");
				String domainname = rs.getString("domain");

				String ip_Add = rs.getString("ip_address");

				PreparedStatement ps_l = (PreparedStatement) con
						.prepareStatement("select distinct(useragents)as ua from bot_ip_details where IP_ADDRESS= ? and DATE_AND_HOUR >= ? and DATE_AND_HOUR<= ? and sid= ?");

				ps_l.setString(1, ip_Add);
				ps_l.setString(2, startDateStr);
				ps_l.setString(3, endDateStr);

				ps_l.setInt(4, sid);

				ResultSet rs_l = ps_l.executeQuery();
				StringBuilder useragents = new StringBuilder();
				while (rs_l.next()) {
					String useragent = rs_l.getString("ua");
					
					if (useragent != null) {
						useragents.append(useragent);
						useragents.append(" ; ");
					//	System.out.println("User agent is: " + useragent);
					}

				}
				String useragentsString = useragents.toString();
				ipd.setUseragent(useragentsString);
//				System.out.println(ip_Add);

				ipd.setIp_address(ip_Add);
				ipd.setCity_name(cName);
				ipd.setCountry_name(countryName);
				ipd.setIsp(isp);
				ipd.setTotalrequest(totalRequests);
				ipd.setDomain_name(domainname);

			//	 String nslookupp=nslookup(ip_Add);
				// ipd.setNslookup(nslookupp);

				ipDetailsList.add(ipd);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return ipDetailsList;
	}

	}

