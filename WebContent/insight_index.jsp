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
    min-height: 560px;
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

<h3>How to Give Input(Ex)</h3>
<font color="red" size="4">Sid</font>	-	<font  size="4">7</font><br>
<font color="red" size="4">IP Address</font>  -             <font  size="4">121.121.121.121</font><br>
<font color="red" size="4">Date</font> -                    <font  size="4">DDMMYY(280715)</font><br>
	
</div>


<div class="box mid_box" >

<table border="0" cellpadding="0" cellspacing="0" height="10" width="10" id="bodyTable" style="border-collapse: collapse;table-layout: fixed;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 50;padding: 0;background-color: #F2F2F2;height: 100% !important;width: 100% !important;">
<tr>
                	<td align="center" valign="top" id="bodyCell" style="mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;border-top: 5px solid #FFFFFF;height: 100% !important;width: 100% !important;">

<form action="InsightMailController" method="post" align="center">


<h1>Welcome To ShieldSquare</h1>

EnterSid<input type="text" name="sid"><br><br>
Enter IPaddress<input type="text" name="ipadd"><br><br>
Enter Date<input type="text" name="Date"><br>

<h1>Select What You Want To Show</h1>

IP-and-Total_Hits<input type="checkbox" value="1" name="A"><h5></h5>

Total-Distinct_Pages_count<input type="checkbox" value="1" name="B"><h5></h5>

Url-and-Hits-for-IP<input type="checkbox" value="1" name="C"><h5></h5>

IP-Section-Hits<input type="checkbox" value="1" name="D"><h5></h5>

IP-Hourly-Hits<input type="checkbox" value="1" name="E"><h5></h5>







<font color="Red" size="3"><h3>Use Google Chrome Only</h3></font>
<input type="submit" value="submit">


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