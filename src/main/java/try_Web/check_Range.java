package try_Web;

import java.util.Arrays;

public class check_Range {
	public String doubl_calc(int num) {
		double val=num*Math.random(),min = 0,max = 0,vals[]=new double[2*5];
		if(val<(num/2)) {
			min=val;
			max=num-min;
		}
		else if(val>(num/2)) {
			max=val;
			min=num-max;
		}
		else {}
		for(int i=0;i<vals.length;i++) {
			vals[i]=Math.random()*(max-min)+min;
		}
		String s_out=val+" "+min+" "+max+" "+Arrays.toString(vals);
		return s_out;
	}
	public Object[] doubl_check(int num) {
		float min=(float) (num*.432),max=num-min,mid=(min+max)/2,hyp=(float) Math.sqrt(Math.pow(min, 2)+Math.pow(max, 2));
		double s=min/hyp,c=max/hyp,t=min/max,sn=Math.asin(s),cs=Math.acos(c),tn=Math.atan(t),deg[]= {Math.toDegrees(sn),Math.toDegrees(cs),Math.toDegrees(tn)};
		String s_out[]= {"","",""};
		s_out[0]=min+" "+max+" "+mid+" "+hyp+" "+(mid/hyp);
		s_out[1]=s+" "+c+" "+t;
		s_out[2]=sn+" "+cs+" "+tn;
		Object o_out[]= {s_out,deg};
		return o_out;
	}
}
