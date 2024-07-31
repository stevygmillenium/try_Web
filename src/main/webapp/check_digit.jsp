<%@page import="try_Web.shift_c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String num=request.getParameter("c_num");
char[]ch=num.toCharArray();
int val[]=new int[ch.length],i = 0,tot = 0,c_d;
for(char c:ch) {
	val[i]=Integer.valueOf(String.valueOf(c));
	i++;
}
for(i=0;i<val.length;i++) {
	tot+=val[i];
}
c_d=tot%(2*5);
out.println(new String(ch)+c_d);
shift_c enc=new shift_c();
session.setAttribute("c_num", enc.enc_dec_inv(new String(ch)+c_d)); %>
<a href="shift_c.jsp">shift_c</a>
</body>
</html>