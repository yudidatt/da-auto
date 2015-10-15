package com.shieldsquare.model;

public class Insight_details {

	private String sections;
	private int numberofHitsforSection;
	
	private String peekHour;
	private int peekHourHitCount; 
	
	private String oneSectionHour;
	private int oneSectionHits;
	
	private String url;
	private long url_Hits;
	
	private String IP;
	private long ip_Total_Hits;
	
	
	
	
	
	
	public String getIP() {
		return IP;
	}
	public void setIP(String iP) {
		IP = iP;
	}
	public long getIp_Total_Hits() {
		return ip_Total_Hits;
	}
	public void setIp_Total_Hits(long ip_Total_Hits) {
		this.ip_Total_Hits = ip_Total_Hits;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public long getUrl_Hits() {
		return url_Hits;
	}
	public void setUrl_Hits(long url_Hits) {
		this.url_Hits = url_Hits;
	}
	
	
	
	
	private String id;
	private int total_hits_count;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTotal_hits_count() {
		return total_hits_count;
	}
	public void setTotal_hits_count(int total_hits_count) {
		this.total_hits_count = total_hits_count;
	}
	public String getOneSectionHour() {
		return oneSectionHour;
	}
	public void setOneSectionHour(String oneSectionHour) {
		this.oneSectionHour = oneSectionHour;
	}
	public int getOneSectionHits() {
		return oneSectionHits;
	}
	public void setOneSectionHits(int oneSectionHits) {
		this.oneSectionHits = oneSectionHits;
	}
	public String getPeekHour() {
		return peekHour;
	}
	public void setPeekHour(String peekHour) {
		this.peekHour = peekHour;
	}
	public int getPeekHourHitCount() {
		return peekHourHitCount;
	}
	public void setPeekHourHitCount(int peekHourHitCount) {
		this.peekHourHitCount = peekHourHitCount;
	}
	
	public String getSections() {
		return sections;
	}
	public void setSections(String sections) {
		this.sections = sections;
	}
	public int getNumberofHitsforSection() {
		return numberofHitsforSection;
	}
	public void setNumberofHitsforSection(int numberofHitsforSection) {
		this.numberofHitsforSection = numberofHitsforSection;
	}
	
}