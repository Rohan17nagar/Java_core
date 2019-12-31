package Systango;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
public class Task3 {
	boolean checkExistance(String filename) {
		boolean b = false;
		File f = new File(filename);
		if(f.exists()) {
			b=true;
		}
	return b;	
	}
	int calcTax(int price,int tax) {
		int totalTax = price*tax/100;
		return totalTax;
	}
	void inputOutput(String filename,String outfilename) {
		try (FileReader fr = new FileReader(filename);
				BufferedReader br = new BufferedReader(fr);
				FileWriter fw = new FileWriter(outfilename);
				BufferedWriter bw = new BufferedWriter(fw);){
			
			int totaltax =0,price;
					
			String data;
			String x;
			int tax;
			while((x = br.readLine())!=null) {
				data = x;
				String[] arr = (data.split(","));
				price = Integer.parseInt((arr[2]));
				
				if(arr[3].contentEquals("India")) {
					tax = 5;
					int finalTax = calcTax(price, tax);
					System.out.println(finalTax);
					bw.write(data+","+finalTax+","+price);
					bw.flush();
					bw.newLine();
				}
				
				else if(arr[3].contentEquals("China")) {
					tax = 10;
					int finalTax= calcTax(price, tax);
					System.out.println(finalTax);
					
					bw.write(data+","+finalTax+","+price);
					bw.flush();
					bw.newLine();
				}
				
				else if(arr[3].contentEquals("Japan")) {
					tax = 15;
					int finalTax= calcTax(price, tax);
					System.out.println(finalTax);
					
					bw.write(data+","+finalTax+","+price);
					bw.flush();
					bw.newLine();
				}
				
				else if(arr[3].contentEquals("America")) {
					tax = 20;
					int finalTax = calcTax(price, tax);
					System.out.println(finalTax);
					
					bw.write(data+","+finalTax+","+price);
					bw.flush();
					bw.newLine();
				}
				
				else {
					System.out.println("error!!! Check Again..");
				}
			}				
		}
		catch(IOException e) {
			System.out.println(e);
		}
	}
	public static void main(String[] args) {
		Task3 t3  = new Task3();
		String outfileName="E:\\2019\\EDUCATION RELATED DOCUMENTS\\Eclipse\\core java\\output.csv";
		String filename = "E:\\2019\\EDUCATION RELATED DOCUMENTS\\Eclipse\\core java\\input.csv";
		if(t3.checkExistance(filename)==true) {
			t3.inputOutput(filename,outfileName);
		}	
	}
}