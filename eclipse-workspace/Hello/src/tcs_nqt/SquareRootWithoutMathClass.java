package tcs_nqt;
import java.util.Scanner;
public class SquareRootWithoutMathClass {
	public static void main(String[] args) {
	Scanner sc = new Scanner(System.in);
	int n = sc.nextInt();
		double i=0.00f;
		while(i*i<=n)
			i= i+0.001;
		i=i-0.001;
		System.out.println(i);
		
	}
}
