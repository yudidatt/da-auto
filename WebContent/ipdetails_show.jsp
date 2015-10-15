<%@page import="com.shieldsquare.model.IPDetails"%>
<%@page language="java" import="java.util.*"%>

<body style="margin: 0;padding: 0;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #F2F2F2;height: 100% !important;width: 100% !important;">
    	<center>
        	<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;background-color: #F2F2F2;height: 100% !important;width: 100% !important;">
            	<tbody><tr>
                	<td align="center" valign="top" id="bodyCell" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;border-top: 5px solid #FFFFFF;height: 100% !important;width: 100% !important;">
                        <!-- BEGIN TEMPLATE // -->
                        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                            <tbody><tr>
                                <td align="center" valign="top" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                    <!-- BEGIN PREHEADER // -->
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="templatePreheader" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #F2F2F2;border-top: 0;border-bottom: 0;">
                                        <tbody><tr>
                                        	<td align="center" valign="top" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                <table border="0" cellpadding="0" cellspacing="0" width="600" class="templateContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                    <tbody><tr>
                                                        <td valign="top" class="preheaderContainer" style="padding-top: 10px;padding-bottom: 10px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnImageBlock" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnImageBlockOuter">
            <tr>
                <td valign="top" style="padding: 0px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnImageBlockInner">
                    <table align="left" width="100%" border="0" cellpadding="0" cellspacing="0" class="mcnImageContentContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                        <tbody><tr>
                            <td class="mcnImageContent" valign="top" style="padding-right: 0px;padding-left: 0px;padding-top: 0;padding-bottom: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                
                                    
                                        <img align="left" alt="" src="https://gallery.mailchimp.com/4d758f86da79a669b8140fda7/images/d815efed-c7b5-47fe-bde0-fb3110cdf610.png" width="300" style="max-width: 300px;padding-bottom: 0;display: inline !important;vertical-align: bottom;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;" class="mcnImage">
                                    
                                
                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                
                <table align="left" border="0" cellpadding="0" cellspacing="0" width="600" class="mcnTextContentContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top: 9px;padding-right: 18px;padding-bottom: 9px;padding-left: 18px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #404040;font-family: Helvetica;font-size: 12px;line-height: 125%;text-align: left;">
                        
                            <div style="text-align: right;"><span style="font-size:15px"><span style="font-family:georgia,times,times new roman,serif"><span style="color: #000000;">Bot Traffic Report</span></span></span><br>
<br>
<span style="font-size:15px"><span style="font-family:georgia,times,times new roman,serif"><a href="www.<%= request.getParameter("cn") %>" target="_blank" style="word-wrap: break-word;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #404040;font-weight: normal;text-decoration: underline;"><span style="color:#3366ff"><%= request.getParameter("cn") %></span></a></span></span><br>
<br>
<span style="font-size:15px"><span style="color: #000000;"><span style="font-family:georgia,times,times new roman,serif">For the week ending <%= request.getParameter("cd")%></span></span></span></div>

                        </td>
                    </tr>
                </tbody></table>
                
            </td>
        </tr>
    </tbody>
</table><table class="mcnDividerBlock" cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnDividerBlockOuter">
        <tr>
            <td class="mcnDividerBlockInner" style="padding: 18px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                <table style="border-top: 1px solid #999999;border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnDividerContent" cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tbody><tr>
                        <td style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
    </tbody>
</table></td>
                                                    </tr>
                                                </tbody></table>
                                            </td>                                            
                                        </tr>
                                    </tbody></table>
                                    <!-- // END PREHEADER -->
                                </td>
                            </tr>
                            <tr>
                            	<td align="center" valign="top" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
									<!-- BEGIN HEADER // -->
                                	<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateHeader" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #f2f2f2;border-top: 0;border-bottom: 0;">
                                    	<tbody><tr>
                                        	<td align="center" valign="top" style="padding-top: 20px;padding-bottom: 20px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                <table border="0" cellpadding="0" cellspacing="0" width="600" class="templateContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
													<tbody><tr>
														<td align="center" height="10" valign="top" width="10" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
															<img src="https://gallery.mailchimp.com/27aac8a65e64c994c4416d6b8/images/d4042106-8117-4b79-b76b-91f8d64c5dff.gif" height="10" width="10" style="display: block;line-height: 0px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;">
														</td>
														<td align="center" height="10" valign="top" class="headerRearBackground" style="opacity: 0.5;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #d5baba;">
															<img src="https://gallery.mailchimp.com/27aac8a65e64c994c4416d6b8/images/640a7ee0-db88-4905-a550-89e571c94697.png" class="mcnImage" height="10" width="580" style="display: block;line-height: 0px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;vertical-align: bottom;">
														</td>
														<td align="center" height="10" valign="top" width="10" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
															<img src="https://gallery.mailchimp.com/27aac8a65e64c994c4416d6b8/images/d4042106-8117-4b79-b76b-91f8d64c5dff.gif" height="10" width="10" style="display: block;line-height: 0px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;">
														</td>
													</tr>
                                                	<tr>
                                                    	<td align="center" colspan="3" valign="top" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                        	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerFrontBackground" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #d5baba;border-bottom: 2px solid #BD4046;">
                                                                <tbody><tr>
                                                                    <td align="center" valign="top" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                                        <!-- BEGIN HEADER // -->
                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" id="" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                                            <tbody><tr>
                                                                                <td valign="top" class="headerContainer" style="padding-top: 20px;padding-bottom: 20px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnBoxedTextBlock" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnBoxedTextBlockOuter">
        <tr>
            <td valign="top" class="mcnBoxedTextBlockInner" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                
                <table align="left" border="0" cellpadding="0" cellspacing="0" width="600" class="mcnBoxedTextContentContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                    <tbody><tr>
                        
                        <td style="padding-top: 9px;padding-left: 18px;padding-bottom: 9px;padding-right: 18px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                        
                            <table border="0" cellpadding="18" cellspacing="0" class="mcnTextContentContainer" width="100%" style="border: 1px solid #999999;background-color: #EBEBEB;border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                <tbody><tr>
                                    <td valign="top" class="mcnTextContent" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #FFFFFF;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;">
                                        <h2 class="mc-toc-title" style="text-align: center;display: block;margin: 0;padding: 0;font-family: Helvetica;font-size: 22px;font-style: normal;font-weight: bold;line-height: 125%;letter-spacing: normal;color: #FFFFFF !important;"><span style="font-size:19px"><span style="font-family:georgia,times,times new roman,serif"><span style="color: #000000;">&nbsp;Impact of Bots on your site is</span></span></span></h2>
&nbsp;

<h1 class="null" style="text-align: center;display: block;margin: 0;padding: 0;font-family: Helvetica;font-size: 26px;font-style: normal;font-weight: bold;line-height: 125%;letter-spacing: normal;color: #FFFFFF !important;"><span style="font-size:37px"><span style="font-family:georgia,times,times new roman,serif"><span style="color: #FF0000;">HIGH</span></span></span></h1>

                                    </td>
                                </tr>
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
                
            </td>
        </tr>
    </tbody>
</table></td>
                                                                            </tr>
                                                                        </tbody></table>
                                                                        <!-- // END HEADER -->
                                                                    </td>
                                                                </tr>
                                                            </tbody></table>
                                                        </td>
                                                    </tr>
                                                </tbody></table>
											</td>
										</tr>
									</tbody></table>
									<!-- // END HEADER -->
								</td>
							</tr>
                            <tr>
                                <td align="center" valign="top" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                    <!-- BEGIN BODY // -->
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateBody" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #F2F2F2;border-top: 0;border-bottom: 0;">
                                        <tbody><tr>
                                            <td align="center" valign="top" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                <table border="0" cellpadding="0" cellspacing="0" width="600" class="templateContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                    <tbody><tr>
                                                        <td valign="top" class="bodyContainer" style="padding-top: 10px;padding-bottom: 10px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                
                <table align="left" border="0" cellpadding="0" cellspacing="0" width="282" class="mcnTextContentContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                    <tbody><tr>
                        	
	<%
String check3[]= request.getParameterValues("C");
if(check3 !=null)
{
%>

		<% ArrayList<IPDetails> ipD3List= (ArrayList<IPDetails>)request.getAttribute("ip_list_third");
	String str3="Empty";
	for (IPDetails ipD : ipD3List) {
		if(ipD.getBot_signature_detected()!=0){
		
	%>
                        <td valign="top" class="mcnTextContent" style="padding-top: 9px;padding-left: 18px;padding-bottom: 9px;padding-right: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #606060;font-family: Helvetica;font-size: 14px;line-height: 150%;text-align: left;">
                        
                            <h2 class="null" style="text-align: center;display: block;margin: 0;padding: 0;font-family: Helvetica;font-size: 22px;font-style: normal;font-weight: bold;line-height: 125%;letter-spacing: normal;color: #FFFFFF !important;"><span style="font-size:20px"><span style="font-family:times new roman,times,baskerville,georgia,serif"><span style="color: #FF0000;"><%=ipD.getBot_signature_detected()%> BOTS</span></span></span></h2>

<div style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="color: #000000;"><span style="font-size:14px">attacked</span></span></span></div>

                        </td>
<%}%> 
		<%}%> 
	<%}%>
                    </tr>
                </tbody></table>
                
                <table align="right" border="0" cellpadding="0" cellspacing="0" width="282" class="mcnTextContentContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                    <tbody><tr>
                        	<%
String check2[]= request.getParameterValues("B");
if(check2 !=null)
{
%>
			<% ArrayList<IPDetails> ipDDList= (ArrayList<IPDetails>)request.getAttribute("ip_list_sec");
	String str1="Empty";
	for (IPDetails ipD : ipDDList) {
		if(ipD.getBot_hits_received()!=0){
	%>
		
                        <td valign="top" class="mcnTextContent" style="padding-top: 9px;padding-right: 18px;padding-bottom: 9px;padding-left: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #606060;font-family: Helvetica;font-size: 14px;line-height: 150%;text-align: left;">
		
		<h2 class="null" style="text-align: center;display: block;margin: 0;padding: 0;font-family: Helvetica;font-size: 22px;font-style: normal;font-weight: bold;line-height: 125%;letter-spacing: normal;color: #FFFFFF !important;"><span style="font-family:times new roman,times,baskerville,georgia,serif"><span style="color: #FF0000;"><%=ipD.getBot_hits_received()%> &nbsp;</span></span><span style="font-family:times new roman,times,baskerville,georgia,serif"><span style="color: #FF0000;">BOT HITS</span></span></h2>
		<div style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="color: #000000;"><span style="font-size:14px">received</span></span></span></div>
			</td>
<%}%> 
		<%}%> 
	<%}%>

</tr></tbody>
		 
	
                    
                </table>
                
            </td>
        </tr>
    </tbody>
</table><table class="mcnDividerBlock" cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnDividerBlockOuter">
        <tr>
            <td class="mcnDividerBlockInner" style="padding: 18px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                <table style="border-top: 1px solid #999999;border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnDividerContent" cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tbody><tr>
                        <td style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
    </tbody>
</table>

<%
String check[]= request.getParameterValues("A");
if(check !=null)
{
%>


<table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                
                <table align="left" border="0" cellpadding="0" cellspacing="0" width="600" class="mcnTextContentContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top: 9px;padding-right: 18px;padding-bottom: 9px;padding-left: 18px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #606060;font-family: Helvetica;font-size: 14px;line-height: 150%;text-align: left;">
                        
                            <div style="text-align: center;">&nbsp; &nbsp;<span style="color:#000000"><strong><span style="font-size:18px"><span style="font-family:georgia,times,times new roman,serif">Top Bot Details</span></span></strong></span><br>
&nbsp;</div>





<style type="text/css">span1 
{ 
    display:block;
    width:100px;
    word-wrap:break-word;
}
</style>


<table align="center" border="5" style="width: 100%;border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
	<tbody>
	</tbody>
	<colgroup>
		<col width="70/">
		<col width="90">
		<col width="90">
		<col width="70">
	</colgroup>
	<tbody>
		<tr>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>IP Address</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><strong><span style="font-family:georgia,times,times new roman,serif">ISP</span></strong></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>City/Country</strong></span></span></span></th>
			<th style="text-align: center;"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif"><strong>Bot Hits</strong></span></span></span></th>
<%
String Bot[]= request.getParameterValues("BotI");
if(Bot!=null)
{
%>
<th style="text-align: center;" valign="top"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:georgia,times,times new roman,serif">Bot Intent</span></span></span></th>

<%
}
%>
	</td>
		</tr>
<% ArrayList<IPDetails> ipDList= (ArrayList<IPDetails>)request.getAttribute("ip_list_first");
	String str="Empty";
	
	for (IPDetails ipD : ipDList) {	
		if(ipD!=null){
			
		
	%>

		<tr>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getIp_address()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="font-size:12px"><span style="color:rgb(0, 0, 0)"><%=ipD.getIsp()%></span></span></span></td>			
			<td style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="font-size:12px"><span style="color:rgb(0, 0, 0)"><%=ipD.getCity_name()%>/<%=ipD.getCountry_name()%></span></span></span></td>
			<td style="text-align: center;"><span style="font-size:13px"><span style="color:#000000"><span style="font-family:times new roman,times,baskerville,georgia,serif"><%=ipD.getTotalrequest()%></span></span></span></td>
		<%
		if(Bot!=null)
		{
		%>
			<td style="text-align: center;" valign="top"><span style="color:#000000"><span style="font-size:12px"><span style="font-family:georgia,times,times new roman,serif">asda</span></span></span></td>
		</tr>

			
			<%} %>
		<%}}%> 
		
	</tbody>
</table>

          
              </td>
                    </tr>
                </tbody></table>
                
            </td>
        </tr>
    </tbody>
</table></td>

                                                    </tr>
                                                </tbody></table>
                                            </td>
                                        </tr>
                                    </tbody></table><%} %>
                                    <!-- // END BODY -->
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top" style="padding-bottom: 40px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                    <!-- BEGIN FOOTER // -->
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateFooter" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #F2F2F2;border-top: 0;border-bottom: 0;">
                                        <tbody><tr>
                                            <td align="center" valign="top" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                <table border="0" cellpadding="0" cellspacing="0" width="600" class="templateContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                                    <tbody><tr>
                                                        <td valign="top" class="footerContainer" style="padding-top: 10px;padding-bottom: 10px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnDividerBlock" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnDividerBlockOuter">
        <tr>
            <td class="mcnDividerBlockInner" style="padding: 18px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                <table class="mcnDividerContent" border="0" cellpadding="0" cellspacing="0" width="100%" style="border-top-width: 1px;border-top-style: solid;border-top-color: #999999;border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                    <tbody><tr>
                        <td style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
    </tbody>
</table>


<%
String foot[]= request.getParameterValues("D");
if(foot!=null)
{
%>



<table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnBoxedTextBlock" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
    <tbody class="mcnBoxedTextBlockOuter">
        <tr>
            <td valign="top" class="mcnBoxedTextBlockInner" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                
                <table align="left" border="0" cellpadding="0" cellspacing="0" width="600" class="mcnBoxedTextContentContainer" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                    <tbody><tr>
                        
                        <td style="padding-top: 9px;padding-left: 18px;padding-bottom: 9px;padding-right: 18px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                        
                            <table border="0" cellpadding="18" cellspacing="0" class="mcnTextContentContainer" width="100%" style="border: 2px solid #0A0606;background-color: #D5BABA;border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
                                <tbody><tr>
                                    <td valign="top" class="mcnTextContent" style="color: #140505;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 10px;line-height: 125%;text-align: center;">
                                        <div style="text-align: left;"><span style="color:#000000"><strong><span style="font-size:14px"><span style="font-family:arial,helvetica neue,helvetica,sans-serif">Recommended next steps</span></span></strong></span><br>
<br>
<span style="color: #000000;font-size: 14px;line-height: 20.7999992370605px;">- Switch ShieldSquare to active mode to pro-actively stop the bot traffic.&nbsp;</span><a href="mailto:support@shieldsquare.com?subject=Switch%20to%20Active%20Mode" style="font-size: 14px;line-height: 20.7999992370605px;word-wrap: break-word;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #AAAAAA;font-weight: normal;text-decoration: underline;" target="_blank"><span style="color: #B22222;">Raise a&nbsp;request</span></a><span style="font-size:14px; line-height:20.7999992370605px">&nbsp;</span><span style="color: #000000;font-size: 14px;line-height: 20.7999992370605px;">to switch to Active Mode.&nbsp;</span><span style="color: #000000;font-size: 14px;line-height: 1.6em;">&nbsp;</span><br>
<span style="color: #000000;font-size: 14px;line-height: 1.6em;">- Upgrade to a paid plan for continued protection.</span></div>

                                    </td>
                                </tr>
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
                
            </td>
        </tr>
    </tbody>
</table></td>
                                                    </tr>
                                                </tbody></table>
                                            </td>
                                        </tr>
                                    </tbody></table>
                                    
                                    	<%
}
%>
                                    
                                    <!-- // END FOOTER -->
                                </td>
                            </tr>
						</tbody></table>
						<!-- // END TEMPLATE -->
                    </td>
                </tr>
            </tbody></table>
        </center>
    
</body>