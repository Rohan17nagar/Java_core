package Systango;

import java.util.Scanner;

class Wages{
	public String employeeName;
	public int hours;
	public double rate,pay;
	
	public void setEmployeeName(String name) {
		employeeName = name;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public double calculatePay(int hours,double rate) {
		if(hours>40) {
			int extraHours = hours-40;
			pay = (40*rate)+(extraHours*rate);
		}
		else {
			pay = hours*rate;
			
		}
		return pay;
	}
	public void displayEmployee() {
		System.err.println("Employee name is "+getEmployeeName());
		System.out.println("Salary total : "+ pay);
	}
	
}
public class SalaryEmployee {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Wages employee = new Wages();
		System.out.println("enter the name of Employee :");
		String name = sc.nextLine();
		employee.setEmployeeName(name);
		
		System.out.println("Enter how many hours worked: ");
		int hours = sc.nextInt();
		
		System.out.println("enter hourly Rate :");
		double rate = sc.nextDouble();
		
		employee.displayEmployee();
		System.out.println();
	}

}
