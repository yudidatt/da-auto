

<%@page import="com.shieldsquare.model.Insight_details"%>
<%@page language="java" import="java.util.*"%>
<div style="text-align: center;">&nbsp; &nbsp;<span style="color:#000000"><strong><span style="font-size:18px"><span style="font-family:georgia,times,times new roman,serif">Top Bot Details</span></span></strong></span><br />
&nbsp;</div>
<style type="text/css">span1 
{ 
    display:block;
    width:100px;
    word-wrap:break-word;
}
</style>




<html>
<body>
<%
String check1[]= request.getParameterValues("A");
if(check1!=null)
{
%>
<h4>IP_and_Total-Hits</h4>


<table align="center" border="5" style="width: 90%;">
	<tbody>
	</tbody>
	<colgroup>
		<col width="230/" />
		<col width="90" />
	</colgroup>
	<tbody>
		<tr>
			<td style="text-align: center;"><span style="font-size:13px"><strong><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center">IP</span></span></strong></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="font-family:georgia,times,times new roman,serif"><strong style="color:rgb(0, 0, 0); font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><span class="im">Total-Hits</span></strong></span></span></td>
	</td>
		</tr>
			<% ArrayList<Insight_details> ipDList= (ArrayList<Insight_details>)request.getAttribute("ip_list1");
	String str="Empty";
	for (Insight_details ipD : ipDList) {
	%>
		<tr>
		<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><%=ipD.getIP()%></span></span></span></td>
		<td style="text-align: center;" valign="top"><span style="color:#000000"><span style="font-size:13px"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getIp_Total_Hits()%></span></span></span></td>
		</tr>
			</tbody>
		<%}%> 
	</table>
	<%}%>
	
	


<html>
<body>
<%
String check2[]= request.getParameterValues("B");
if(check2!=null)
{
%>
<h4>Total_Distinct_Pages_Count</h4>


<table align="center" border="5" style="width: 90%;">
	<tbody>
	</tbody>
	<colgroup>
		<col width="230/" />
		<col width="90" />
	</colgroup>
	<tbody>
		<tr>
		
			<td style="text-align: center;"><span style="font-size:13px"><span style="font-family:georgia,times,times new roman,serif"><strong style="color:rgb(0, 0, 0); font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><span class="im">No.of Distinct Pages</span></strong></span></span></td>
	</td>
		</tr>
			<% ArrayList<Insight_details> ipDList= (ArrayList<Insight_details>)request.getAttribute("ip_list2");
	String str="Empty";
	for (Insight_details ipD : ipDList) {
	%>
		<tr>
		<td style="text-align: center;" valign="top"><span style="color:#000000"><span style="font-size:13px"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getTotal_hits_count()%></span></span></span></td>
		</tr>
			</tbody>
		<%}%> 
	</table>
	<%}%>






	<%
String check3[]= request.getParameterValues("C");
if(check3!=null)
{
%>

<h4>URL_and _Hits</h4>
<table align="center" border="5" style="width: 90%;">
	<tbody>
	</tbody>
	<colgroup>
		<col width="230/" />
		<col width="90" />
	</colgroup>
	<tbody>
		<tr>
			<td style="text-align: center;"><span style="font-size:13px"><strong><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center">URL</span></span></strong></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="font-family:georgia,times,times new roman,serif"><strong style="color:rgb(0, 0, 0); font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><span class="im">Total-Hits-For-Url</span></strong></span></span></td>
	</td>
		</tr>
			<% ArrayList<Insight_details> ipDList= (ArrayList<Insight_details>)request.getAttribute("ip_list3");
	String str="Empty";
	for (Insight_details ipD : ipDList) {
	%>
		<tr>
		<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><%=ipD.getUrl()%></span></span></span></td>
			<td style="text-align: center;" valign="top"><span style="color:#000000"><span style="font-size:13px"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getUrl_Hits()%></span></span></span></td>
		</tr>
			</tbody>
		<%}%> 
	</table>
	<%}%>






	<%
String check4[]= request.getParameterValues("D");
if(check4!=null)
{
%>

<h4>IP_Section_Hits</h4>
<table align="center" border="5" style="width: 90%;">
	<tbody>
	</tbody>
	<colgroup>
		<col width="230/" />
		<col width="90" />
	</colgroup>
	<tbody>
		<tr>
			<td style="text-align: center;"><span style="font-size:13px"><strong><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center">Section</span></span></strong></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="font-family:georgia,times,times new roman,serif"><strong style="color:rgb(0, 0, 0); font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><span class="im">Total_Hit_for_Section</span></strong></span></span></td>
	</td>
		</tr>
			<% ArrayList<Insight_details> ipDList= (ArrayList<Insight_details>)request.getAttribute("ip_list4");
	String str="Empty";
	for (Insight_details ipD : ipDList) {
	%>
		<tr>
		<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><%=ipD.getSections()%></span></span></span></td>
			<td style="text-align: center;" valign="top"><span style="color:#000000"><span style="font-size:13px"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getNumberofHitsforSection()%></span></span></span></td>
		</tr>
			</tbody>
		<%}%> 
	</table>
	<%}%>






	<%
String check5[]= request.getParameterValues("E");
if(check5!=null)
{
%>

<h4>IP_Hourly_count</h4>
<table align="center" border="5" style="width: 90%;">
	<tbody>
	</tbody>
	<colgroup>
		<col width="230/" />
		<col width="90" />
	</colgroup>
	<tbody>
		<tr>
			<td style="text-align: center;"><span style="font-size:13px"><strong><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center">Hour</span></span></strong></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="font-family:georgia,times,times new roman,serif"><strong style="color:rgb(0, 0, 0); font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><span class="im">Hourly_count</span></strong></span></span></td>
	</td>
		</tr>
			<% ArrayList<Insight_details> ipDList= (ArrayList<Insight_details>)request.getAttribute("ip_list5");
	String str="Empty";
	for (Insight_details ipD : ipDList) {
	%>
		<tr>
		<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif; line-height:20.7999992370605px; text-align:center"><%=ipD.getPeekHour()%></span></span></span></td>
			<td style="text-align: center;" valign="top"><span style="color:#000000"><span style="font-size:13px"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getPeekHourHitCount()%></span></span></span></td>
		</tr>
			</tbody>
		<%}%> 
	</table>
	<%}%>


<%@ include file="insight_footer.jsp" %>
