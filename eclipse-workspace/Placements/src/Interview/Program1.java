package Interview;
import java.util.Scanner;
public class Program1 {
	public static void main(String[] args) {
	String str = "Reverse me!";
	str = reverse(str);
	System.out.println("Reversed String is "+str);
	}

	private static String reverse(String str) {
		if(str==null || str.equals("")) {
			return str;
		}
		int n = str.length();
		char[] temp = new char[n];
		for(int i=0;i<n;i++) {
			temp[n-i-1] = str.charAt(i);
		}
		return String.copyValueOf(temp);
	}
}