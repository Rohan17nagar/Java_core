package Systango;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class SalesTaxCalculation {
// E:\2019\Eclipse\core java
	
	public static void main(String[] args) {
		
		String name = "Input.csv";
		SalesTaxCalculation stc = new SalesTaxCalculation();
		String filename="E:\\2019\\Eclipse\\core java\\"+name;		
		if(stc.checkExistance(filename)) {
			String filedata = stc.readData(filename);
			System.out.println(filedata);
		}
		else {
			System.out.println("File is Not there.");
		}
	}
	
String readData(String filename) {
	String data="";
	
	try(FileReader fr = new FileReader(filename);
			BufferedReader br = new BufferedReader(fr);)
			{
		int x;
		while((x=br.read())!=-1) {
			data = data+(char)x;
		}		
	}catch(Exception e) {
		System.out.println(e);
	}
	return data;
}
boolean checkExistance(String filename) {
		boolean b = false;
		File f = new File(filename);
		b = f.exists();
		return b;
	}
}
