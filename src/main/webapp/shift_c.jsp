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
<%!public String enc_dec_auto(String data){
	char[]c_data,conv;
	String s_out,s_in;
	int i = 0,s_a;
	c_data=data.toCharArray();
	conv=new char[c_data.length];
	if(data.charAt(data.length()-1)=='0'){
		s_a=data.charAt(data.length()-2);
		for(char c:c_data) {
			conv[i]=(char) (c-s_a);
			i++;
		}
		s_in=new String(conv);
		s_out=s_in.substring(0, s_in.length()-2);
	}
	else{
		s_a=(int)Math.round(Math.random()*(50-30)+30);
		for(char c:c_data) {
			conv[i]=(char) (c+s_a);
			i++;
		}
		s_out=new String(conv)+(char)s_a+"0";
	}
	return s_out;
} %>
<%shift_c dec=new shift_c();
String c_num=(String) session.getAttribute("c_num");
out.println(c_num);
String d_num=dec.enc_dec_inv(c_num);
out.println(d_num); 
String e_num[]={"",""};
e_num[0]=enc_dec_auto(d_num);
out.print(e_num[0]);
out.println(enc_dec_auto(e_num[0]));
e_num[1]=dec.enc_dec_shuff(d_num, true);
out.print(e_num[1]+" ");
out.print(dec.enc_dec_shuff(e_num[1], false)); %>
</body>
</html>