package Systango;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;

public class Task2 {

	public static void main(String[] args) {
/*
 * readline(); not equals to null.
 * data process..
 * split txt calc write in file.
 */
String data ="";
		
 		try (FileReader fr = new FileReader("input.csv");
			BufferedReader br = new BufferedReader(fr);
				){
 			String x;
 			FileWriter fw = new FileWriter("output.csv");
			BufferedWriter bw = new BufferedWriter(fw);
		 
			
 			while((x=br.readLine())!=null) {
				data =x;
			
				String[] values = (data.split(","));
				int totaltax=0;
				int third = Integer.parseInt(values[2]);
				if(values[3].contentEquals("India")) {
					
				totaltax = third*5/100; //25
				third = totaltax+third;
				
				bw.write(data+","+totaltax+","+third);
				bw.flush();
				bw.newLine();
				}
				else if(values[3].contentEquals("US")) {
			 totaltax = third*10/100;
			 third = totaltax+third;
					
			 bw.write(data+","+totaltax+","+third);
			bw.flush();
			bw.newLine();
				}
				else if(values[3].contentEquals("China")) {
			 totaltax = third*15/100;
			 third = totaltax+third;
			 bw.write(data+","+totaltax+","+third);
			bw.flush();
			bw.newLine();
					}
				else if(values[3].contentEquals("Japan")) {
			 totaltax = third*20/100;
			 third = totaltax+third;
					
			 bw.write(data+","+totaltax+","+third);
			bw.flush();
			bw.newLine();
				}
				else {
					System.out.println("not exist..");
				}					
			}
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}
