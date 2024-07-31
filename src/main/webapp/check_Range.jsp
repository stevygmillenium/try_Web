<%@page import="java.util.Random"%>
<%@page import="java.util.Arrays"%>
<%@page import="try_Web.check_Range"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!public float rand_sal(float nums[]){
	float num = 0;
	Random rnd=new Random();
	float mid=(nums[0]+nums[9])/2;
	while(num<mid) {
		num=nums[rnd.nextInt(nums.length)];
	}
	return num;
} %>
<%String s_num[]=request.getParameter("chk_r").split(",");
float nums[]=new float[s_num.length];
int i=0;
do{
	nums[i]=Float.parseFloat(s_num[i]);
	i++;
}
while(i<nums.length);
out.println(Arrays.toString(nums));
float mid=(nums[0]+nums[9])/2;
out.println("mid:"+mid);
float num=rand_sal(nums);
out.println("num:"+num);
out.println(num*(1+Math.random())); 
check_Range rng=new check_Range();
out.print("<br/>"+rng.doubl_calc((int) num));
Object o_in[]=rng.doubl_check((int) num);
String s_in[]=(String[])o_in[0];
double d_in[]=(double[])o_in[1];
out.print("<br/>"+s_in[0]);
out.print("<br/>"+s_in[1]);
out.print("<br/>"+s_in[2]);
out.print("<br/>"+d_in[0]+" "+d_in[1]+" "+d_in[2]); %>
</body>
</html>