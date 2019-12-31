/*
 * Java program for GP series Problem asked in TCS NQT.
 */
package tcs_nqt;
import java.util.Scanner;
public class GpSeriesProblem {
	public static void main(String[] args) {
	Scanner sc = new Scanner(System.in);
	int n = sc.nextInt();
	if(n%2==1) {
		System.out.println(7*(n/2));
	}
	else {
		System.out.println(6*((n-1)/2));
	}
	}
}
