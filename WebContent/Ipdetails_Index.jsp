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
    min-height: 600px;
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

	
</div>


<div class="box mid_box" >

<table border="0" cellpadding="0" cellspacing="0" height="10" width="10" id="bodyTable" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 50;padding: 0;background-color: #F2F2F2;height: 100% !important;width: 100% !important;">
<tr>
                	<td align="center" valign="top" id="bodyCell" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;border-top: 5px solid #FFFFFF;height: 100% !important;width: 100% !important;">
<form action="IPDetailsController" method="get" align ="center" >

	<h1>Welcome To ShieldSquare</h1>

	Bot-intent:<input type="checkbox" name="BotI" value="1"/><br><br>
	Enter Sid:<input type="text" name="sid"/><br><br>
	Start Date:<input type="datetime-local" name="start_date"  /> <br><br>
	End Date:<input type="datetime-local"  name="end_date" /><br><br>
	Bot-Table:<input type="checkbox" name="A" value="1"/><br><br>
	Bot-Hit-Received:<input type="checkbox" name="B" value="1"/><br><br>
	Bot-Signature-Detected:<input type="checkbox" name="C" value="1"/><br><br>
	Footer:<input type="checkbox" name="D" value="1"/><br><br>
	
	
	
	
	<h2>For Header Details</h2>
	
	Enter Customer URL:<input type="text" name="cn"/><br><br>
	Week ending Date :<input type="text" name="cd"/><br><br>
	
	<font color="Red" size="3"><h3>Use Google Chrome Only</h3></font>
	
	<input type="submit" value="submit" />
	
	
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