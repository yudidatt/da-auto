package com.shieldsquare.model;

public class IPDetails {

	private int id;
	private String ip_address;
	private String country_name;
	private String city_name;
	private String isp;
	private int totalrequest;

	private int bot_hits_received;
	private int bot_signature_detected;

	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getBot_hits_received() {
		return bot_hits_received;
	}

	public void setBot_hits_received(int bot_hits_received) {
		this.bot_hits_received = bot_hits_received;
	}

	public int getBot_signature_detected() {
		return bot_signature_detected;
	}

	public void setBot_signature_detected(int bot_signature_detected) {
		this.bot_signature_detected = bot_signature_detected;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
