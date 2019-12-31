package tcs_nqt;
import java.util.Scanner;
public class NthFibonacciNumber {
public static void main(String[] args) {
int a=0,b=1,temp;
System.out.println("Enter a number: ");
Scanner sc = new Scanner(System.in);
int num = sc.nextInt();
if(num==0) 
{
	System.out.println(a);
}
else{
	for(int i=2;i<=num;i++) 
	{
			temp = a+b;
			a = b;
			b = a;			
	}
	}
System.err.println(b);
}
}
