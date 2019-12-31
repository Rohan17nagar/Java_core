package tcs_nqt;
import java.util.Scanner;
import java.lang.Math;
public class DevineDivisor {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int test_case = sc.nextInt();
		if(test_case>=1 && test_case<=15) {
			for(int j=0;j<test_case;j++) {
			System.out.print("\n");
			long n = sc.nextLong();
			DevineDivisor dd = new DevineDivisor();
			if(1<=n && n<=Math.pow(10,15))
				dd.showdivisor(n);
			}
		}
	}
	void showdivisor(long n) {
		for(int i=1;i<=n;i++) {
			if(n%i==0) {
				System.out.print(i+" ");
			}
		}
	}
}