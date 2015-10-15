<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style>
.box{
    width: 30%;
    float: left;
    padding: 20px;
    background-color: #F2F2F2;
    min-height: 369px;
}
.mid_box{


       border-left: 1px solid #000;
    border-right: 1px solid #000;
    border-bottom: 1px solid #000;
    border-top: 1px solid #000;
     height
}
.clearfixed{
clear:both;
}  
 .foot_left{
      width: 90%;
    float: left;
    background-color: white;
        padding-left: 10%;
    padding-top: 0.5%;
    padding-bottom: 0%;

    }
</style>
</head>


<body style="margin: 0;padding: 0;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #F2F2F2;height: 100% !important;width: 100% !important;">

<div class="clearfixed"></div>
  <div class="foot_left">
  <img src="shieldquare-logo.png" width="183" height="40" border="0" align="left"/><br><br><br>
 </div>
 
<div class="box">
<font color="red" style="padding-left: 26%;">DashBoard is</font><br>

<ul>
   	<li>IPaddress</li>
	<li>ISP</li>
	<li>City</li>
	<li>Country</li>
	<li>BotHits</li>
	<li>Domain_Name</li>
	</ul>
</div>


<div class="box mid_box" >

<table border="0" cellpadding="0" cellspacing="0" height="10" width="10" id="bodyTable" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 50;padding: 0;background-color: #F2F2F2;height: 100% !important;width: 100% !important;">
<tr>
                	<td align="center" valign="top" id="bodyCell" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;border-top: 5px solid #FFFFFF;height: 100% !important;width: 100% !important;">
<form action="Nslookup_Domain_controller" method="post" align ="center">

<h1>Welcome To ShieldSquare</h1>

	Enter Sid:<input type="text" name="sid"/><br><br>
	Start Date:<input type="datetime-local" name="start_date"  /> <br><br>
	End Date:<input type="datetime-local"  name="end_date" /><br><br>
	
	DashBoard + NSLookup<input type="checkbox" value="1" name="A"><h5></h5>
	DashBoard + NSLookup + UserAgent<input type="checkbox" value="1" name="B"><h5></h5>
	
	


		<input type="submit" value="submit" />
		
		<font color="Red" size="3"><h3>Use Google Chrome Only</h3></font>
		
	</form>
		
</td>	
	</tr>

</table>
</div>

<!-- -------Right Box---------------->


<div class="box">
	

</div>

</div>

</body>
</html>