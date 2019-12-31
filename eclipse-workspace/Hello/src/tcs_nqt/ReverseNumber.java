package tcs_nqt;
import java.util.Scanner;
public class ReverseNumber {
	public static void main(String[] args) {
		int rem=0,temp=0;
		System.out.println("Enter a number");
		Scanner sc = new Scanner(System.in);
		int number = sc.nextInt();
		while(number>0) {
		rem = number%10;
		temp = temp*10 + rem;
		number = number/10;
		}
		System.out.println("Reverse of the number is: "+temp);
	}

}
