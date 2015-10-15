<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div style="text-align: right;"><span style="font-size:15px"><span style="font-family:georgia,times,times new roman,serif"><span style="color:rgb(0, 0, 0)">Bot Traffic Report</span></span></span><br />
<br />
<span style="font-size:15px"><span style="font-family:georgia,times,times new roman,serif"><a href="https://www.commonfloor.com" target="_blank"><span style="color:#3366ff"><%out.print(request.getParameter("cn"));%></span></a></span></span><br />
<br />
<span style="font-size:15px"><span style="color:rgb(0, 0, 0)"><span style="font-family:georgia,times,times new roman,serif">For the week ending <%out.print(request.getParameter("cd"));%></span></span></span></div>
<br/>

</body>
</html>