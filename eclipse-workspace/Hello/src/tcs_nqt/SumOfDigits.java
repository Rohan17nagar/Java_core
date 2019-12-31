package tcs_nqt;
import java.util.Scanner;
public class SumOfDigits {
	public static void main(String[] args) {
		/*
		 * Program in Java to do sum of digits of a number..
		 */
		System.out.println("Enter a number");
		Scanner sc = new Scanner(System.in);
		int temp,sum=0;
		int n = sc.nextInt();
		while(n!=0) {
			temp = n%10; //3 //2 //1
			sum = sum + temp; //3 //5 //6
			n = n/10; //12 //1 
		}
		System.out.println(sum);
	}

}
