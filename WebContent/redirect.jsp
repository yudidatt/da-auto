<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style>
.innerBox{
width:30%;
float:left;
padding:20px;
}
.box{
     width: 15%;
    float: left;
    padding: 20px;
    border: 2px solid black;
    margin-left: 10px;
    padding: 55px;
    margin-top: 31px;
    margin-bottom: 22px;
    min-height: 36px;
    border-radius: 10px;
    background-color: white;
    box-shadow: 5px 5px 0px #2B2020;
}
.link{
    text-decoration: none;
}
.mid_box{
border-top:0px !important;
border-bottom:0px !important;
border:1px solid #fff;
}
.clearfixed{
clear:both;
}
.heading{

}
.top{
border:1px solid #000;
width:100%;
    background: url("home-banner-image.jpg") no-repeat center center rgba(0,0,0,0.5);
    background-size: cover;
    z-index: 1;
    height: 286px;
}
.box_left{
float:left;
width:75%;
color:#fff;
    padding-top: 59px;
}
.box_right{
float:right;
color:#fff;
width:25%;
    padding-top: 59px;
}
.heading{
    font-family: source sans pro;
    font-size: 3rem;
    text-align: center;
    font-weight: 500;
    line-height: 1.1;
    }
    .slide{
        height: 40px;
    position: relative;
    top: 46px;
    font-size: 40px;
    right: 193px;
    font-weight: bold;
    color: red;
    }
ul li{
list-style: none;
}
.section1{
       background: url("background.jpg");
    height: 301px;
    position: relative;
    background-repeat: repeat;
    padding: 10px;
    }
    .footer .map_img{
    width: 70%;
    height: 315px;
    }
    .section_content{
        text-align: center;
    color: #fff;
    }
    .section_content p{
    }
    .hed{
        text-align: center;
    color: #fff;
    font-size: 20px;
    height: 10px;
    position: relative;
    top: 0px;
    width: 70%;
   
    
    }
    
    .foot_left{
      width: 20%;
    float: left;
    background-color: white;
    }
    .foot_right{
        width: 80%;
    float: right;
    text-align: right;
    background-color: white;
}
    }
    
</style>


</head>


<body style="margin: 0;padding: 0;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #F2F2F2;height: 100% !important;width: 100% !important;">
<!-- -------Left Box------------>
<div class="top">
	<div class="box_left">
			<h2 class="heading">Protect your online business from</h2>
	</div>
	<div class="box_right">
	<marquee direction="up" scrolldelay="150" class="slide">
		<ul class="words">
								<li class="word-current">
										<span>Click Fraud</span>
									</li><li class="">
										<span>Content Theft</span>
									</li><li class="">
										<span>Web Scraping</span>
									</li><li class="">
										<span>Bot Abuse</span>
									</li><li class="">
										<span>Form Spam</span>
									</li></ul>
	</marquee>
	</div>
</div>
<div class="section1">

<div class="Datafloat">
<font color="white" size="6" style="width: 10%;padding-left: 40%;">Data Analysis Tool</font>


</div>




<div class="box">
	<a class="link" href="Ipdetails_Index.jsp">Weekly_Mail_Data</a>
</div>

<!-- -------Middle Box---------->


<div class="box">
<a class="link" href="nslookup_domain_index.jsp" >NSLookup_Domain_DataCenter</a>

</div>

<div class="box">
<a href="delete_index.jsp" class="link">Delete-IP from IP_Analysis and update in RulesSummary</a>

</div>

<!-- -------Right Box---------------->


<div class="box">
<a class="link" href="insight_index.jsp" >Insight_Mail_Data</a>

</div>


</div>

<div class="clearfixed"></div>

<div align="center">

<!-- --------------Footer------------->
<footer class="footer">
<h1 class="heading">
						Trusted by businesses across 27 countries
					</h1>
	
<img class="map_img" src="shieldsquare-worldmap.jpg" border="0" align="middle"/><br><br><br>
  
 <div class="clearfixed"></div>
 <div class="foot_right">
 <p style="padding: 16px;vertical-align: middle;">© 2015 All Rights Reserved. Kaalbi Technologies Pvt. Ltd.</p>
 </div> 
  <div class="foot_left">
  <img src="shieldquare-logo.png" style="padding: 16px;vertical-align: middle;">
 </div> 
  
</footer>

</div>