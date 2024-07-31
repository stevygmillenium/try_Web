package try_Web;

public class shift_c {
	public String enc_dec_inv(String data) {
		char[]c_data=data.toCharArray(),conv=new char[c_data.length];
		int i = 0,inv_val;
		if(c_data.length<100) {
			inv_val=127;
		}
		else {
			inv_val=255;
		}
		for(char c:c_data) {
			conv[i]=(char) (inv_val-c);
			i++;
		}
		return new String(conv);
	}
	public String enc_dec_shuff(String data,boolean enc) {
		char[]c_data=data.toCharArray(),conv=new char[c_data.length];
		int i = 0,j=c_data.length-1,k = 0;
		if(enc==true) {			
			for(char c:c_data) {
				if(i%2==0) {
					conv[j]=c;
					j--;
				}
				else {
					conv[k]=c;
					k++;
				}
				i++;
			}
		}
		else if(enc==false) {			
			for(i=0;i<c_data.length;i+=2) {
				conv[i]=c_data[j];
				j--;
			}
			for(i=1;i<c_data.length;i+=2) {
				conv[i]=c_data[k];
				k++;
			}
		}
		else {}
		return new String(conv);
	}
}
