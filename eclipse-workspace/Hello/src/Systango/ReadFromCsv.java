package Systango;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
/*
 * Reading values from .csv file (Comma Seperated Values file)
 */
public class ReadFromCsv {
public static void main(String[] args) {
	String fileName = "data.csv";
	File file = new File(fileName);
	try {
		Scanner inputStream = new Scanner(file);
		while(inputStream.hasNext()) {
			String data = inputStream.next();
			String[] values = data.split(",");
			for(int i=0;i<values.length;i++) {
				System.out.println(values[i]);
			}
				}		
	} catch (FileNotFoundException e) {
		System.out.println("File Not Found.");
	}
}
}
