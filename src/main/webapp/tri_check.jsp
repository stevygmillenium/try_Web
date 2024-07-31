<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!public double gen_num(int min,float max){
	return Math.random()*(max-min)+min;
} %>
<%String nums[]=request.getParameter("nums").split(",");
int min=(int) gen_num(Integer.parseInt(nums[0]),Float.parseFloat(nums[1]));
float max=(float) gen_num(Integer.parseInt(nums[2]),Float.parseFloat(nums[3])),mid=(min+max)/2;
double num=gen_num(min, max);
boolean gtet=num>=mid;
out.println(min);
out.println(max);
out.println("mid:"+mid);
out.println("num:"+num+" "+gtet);
out.print("amt:"+num*(1+Math.random())); %>
</body>
</html>