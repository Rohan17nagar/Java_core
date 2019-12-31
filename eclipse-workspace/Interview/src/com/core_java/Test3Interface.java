package com.core_java;
import java.util.Scanner;
interface MyInterface{
	
	void sum(int a,int b);
	void mul(int a,int b);
}
public class Test3Interface implements MyInterface{
	public static void main(String[] args) {
		/*
		 * Interface Program in Java.
		 */
		Scanner scanner = new Scanner(System.in);
		int a = scanner.nextInt();
		int b = scanner.nextInt();
		Test3Interface t3 = new Test3Interface();
		t3.sum(a, b);
		t3.mul(a, b);
	}

	@Override
	public void sum(int a,int b) {
		System.out.println("this is sum...");
	}

	@Override
	public void mul(int a,int b) {
		System.out.println("this is multiply..");
	}

}
