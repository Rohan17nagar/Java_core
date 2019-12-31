package com.core_java;
import java.util.Scanner;
abstract class Test1{	
	void fun_to_sum() {
		//THIS IS A NON-ABSTRACT METHOD.
		//IT HAS BODY
		int a,b,sum;
		System.out.print("Enter two no. to sum ");
		Scanner sc = new Scanner(System.in);
		a = sc.nextInt();
		b = sc.nextInt();
		sum = a+b;
		System.out.println("sum is :"+sum);
	}
	abstract void fun_for_multiply(); //THIS IS ABSTRACT METHOD -- NO BODY.
}

public class Test2Abstract extends Test1{
	public static void main(String[] args) {
		Test2Abstract t2 = new Test2Abstract();
		t2.fun_to_sum();
		t2.fun_for_multiply();
	}
	@Override
	void fun_for_multiply() {
		int a,b,mul;
		System.out.print("Enter two no. to multiply ");
		Scanner sc = new Scanner(System.in);
		a = sc.nextInt();
		b = sc.nextInt();
		mul = a*b;
		System.out.print("mul is: "+mul);
	}
}