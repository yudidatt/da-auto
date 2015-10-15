package com.shieldsquare.model;

public class Nslookup_domain_Details {

	private int id;
	private String ip_address;
	private String country_name;
	private String city_name;
	private String isp;
	private int totalrequest;
	private String domain_name;

	private String nslookup;

	private String useragent;
	
	public String getUseragent() {
		return useragent;
	}

	public void setUseragent(String useragent) {
		this.useragent = useragent;
	}

	public String getIp_address() {
		return ip_address;
	}

	public void setIp_address(String ip_address) {
		this.ip_address = ip_address;
	}

	public String getCountry_name() {
			
		return country_name;
	}

	public void setCountry_name(String country_name) {
		
		if(country_name==null){
			this.country_name=" ";
			}else{
			this.country_name=country_name;
			}
	}

	public String getIsp() {
		return isp;
	}

	public void setIsp(String isp) {
		if(isp==null){
		isp=" ";
		}else{
			
		this.isp = isp;
	}
	}

	public int getTotalrequest() {
		return totalrequest;
	}

	public void setTotalrequest(int totalrequest) {
		this.totalrequest = totalrequest;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		if(city_name==null){
			this.city_name=" ";
		}else{
			this.city_name=city_name;
		}
	}
	
	public String getDomain_name() {
		return domain_name;
	}

	public void setDomain_name(String domain_name) {
		this.domain_name = domain_name;
	}
	
	
	public String getNslookup() {
		return nslookup;
	}

	public void setNslookup(String nslookup) {
		this.nslookup = nslookup;
	}
	
	
}
