package tcs_nqt;
import java.util.Scanner;
public class Fib_Prime_Series {
	int MAX = 1000;
	
	void fibonacci(int n) {
		int a=0,b=1,i,temp;
		for(i=0;i<n;i++) {
			temp = a+b;
			a = b;
			b = temp;
		}
		System.out.println(a);
		
	}
	void prime(int n) {
		int i,j,flag,count=0;
		for(i=2;i<MAX;i++) {
			flag=0;
			for(j=2;j<i;j++) {
				if(i%j==0) {
					flag=1;
					break;
				}
			}
			if(flag==0) {
				if(++count == n) {
					System.out.println(i);
					break;
				}
			}
		}
	}
	public static void main(String[] args) {
		Fib_Prime_Series fps = new Fib_Prime_Series();
		System.out.println("Enter the nth term");
		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		if(n%2==1) {
			fps.fibonacci((n/2)+1);
		}
		else {
			fps.prime(n/2);
		}
	}
}
