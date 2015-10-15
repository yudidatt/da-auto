<%@page import="com.shieldsquare.model.Nslookup_domain_Details"%>
<%@page language="java" import="java.util.*"%>
<div style="text-align: center;">&nbsp; &nbsp;<span style="color:#000000"><strong><span style="font-size:18px"><span style="font-family:georgia,times,times new roman,serif">False-Positive</span></span></strong></span><br />
&nbsp;</div>
<style type="text/css">span1 
{ 
    display:block;
    width:100px;
    word-wrap:break-word;
}
</style>


<%
String Check1[]= request.getParameterValues("A");
if(Check1!=null)
{
%>

<html>
<body>
<button onclick="window.print();">Print</button>

<table align="center" border="5" style="width: 100%;">
	<tbody>
	</tbody>
	<colgroup>
		<col width="90/" />
		<col width="90" />
		<col width="80" />
		<col width="80" />
		<col width="80" />
		<col width="80" />
		<col width="80" />
		<col width="80" />
	</colgroup>
	<tbody>
		<tr>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>IP Address</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><strong><span style="font-family:georgia,times,times new roman,serif">ISP</span></strong></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>City</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>Country</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>Bot Hits</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>Domain Name</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>NSLOOKUP</strong></span></span></span></th>
			
	</td>
		</tr>
		

			<% ArrayList<Nslookup_domain_Details> ipDList= (ArrayList<Nslookup_domain_Details>)request.getAttribute("ip_list");
	String str="Empty";
	for (Nslookup_domain_Details ipD : ipDList) {
	%>

		<tr>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getIp_address()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="font-size:12px"><span style="color:rgb(0, 0, 0)"><%=ipD.getIsp()%></span></span></span></td>			
			<td style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="font-size:12px"><span style="color:rgb(0, 0, 0)"><%=ipD.getCity_name()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getCountry_name()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getTotalrequest()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getDomain_name()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getNslookup()%></span></span></span></td>
			
					
				<%}%> 
	</table>
</body>
</html>

<%
}
%>



<%
String Check2[]= request.getParameterValues("B");
if(Check2!=null)
{
%>

<html>
<body>
<button onclick="window.print();">Print</button>

<table align="center" border="5" style="width: 100%;">
	<tbody>
	</tbody>
	<colgroup>
		<col width="70/" />
		<col width="70" />
		<col width="70" />
		<col width="70" />
		<col width="60" />
		<col width="100" />
	</colgroup>
	<tbody>
		<tr>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>IP Address</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><strong><span style="font-family:georgia,times,times new roman,serif">ISP</span></strong></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>City/Country</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>Bot Hits</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>Domain Name</strong></span></span></span></th>
            <th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>User-Agent</strong></span></span></span></th>			
	</td>
		</tr>
		

			<% ArrayList<Nslookup_domain_Details> ipDList= (ArrayList<Nslookup_domain_Details>)request.getAttribute("ip_list");
	String str="Empty";
	for (Nslookup_domain_Details ipD : ipDList) {
	%>

		<tr>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getIp_address()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="font-size:12px"><span style="color:rgb(0, 0, 0)"><%=ipD.getIsp()%></span></span></span></td>			
			<td style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="font-size:12px"><span style="color:rgb(0, 0, 0)"><%=ipD.getCity_name()%>/<%=ipD.getCountry_name()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getTotalrequest()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getDomain_name()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getUseragent()%></span></span></span></td>
			
					
				<%}%> 
	</table>
</body>
</html>
<%
}
%>
	