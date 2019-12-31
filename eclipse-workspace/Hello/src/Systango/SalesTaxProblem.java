package Systango;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilePermission;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Scanner;
import java.util.Stack;

import javax.swing.filechooser.FileNameExtensionFilter;

public class SalesTaxProblem {
	public static void main(String[] args) {
	String fileName = "sales.csv";
	String[] values = new String[200];
	int saleTax = 0;
	int datavalue=0,i;

	File file = new File(fileName);
	
	try {
		Scanner sc = new Scanner(file);
		while(sc.hasNext()) {
			String data = sc.next();
			values = data.split(",");
		}
//		for(i=0;i<values.length;i++) {
//			System.out.print(values[i]+" ");
//		}

		String str = Arrays.toString(values);
		System.out.println(str);
		String country = values[3];
		int price = Integer.parseInt(values[2]);
		
		if(country.equalsIgnoreCase("India")) {
		saleTax = (price*5/100);
		}
		
		int finalPrice = saleTax + price;
		String output = str+","+saleTax+","+finalPrice;
		System.out.println("\noutput :"+output);
		try {
			FileWriter fw = new FileWriter(fileName);
			BufferedWriter bw = new BufferedWriter(fw);
			PrintWriter pw = new PrintWriter(bw);
			pw.print(output);
			pw.flush();
			pw.close();
		
		} catch (IOException e) {
			System.out.println(e);
		}				
	} catch (FileNotFoundException e) {
	System.out.println("file Not Found" + e);
	}
	}
	}