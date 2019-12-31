package Systango;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
public class Task {
	public static void main(String[] args) {
		String data ="";
		
 		try (FileReader fr = new FileReader("input.csv");
			BufferedReader br = new BufferedReader(fr);
				){
 			int x;
			while((x=br.read())!=-1) {
				data = data + (char)x;
			}
			String[] values = (data.split(","));
			int third = Integer.parseInt(values[2]);
		//	int forth = Integer.parseInt(values[3]);
			int totaltax = third*5/100; //25
			//System.out.println(totaltax);
			third = totaltax+third;
			//System.out.println(third);
			
			FileWriter fw = new FileWriter("output.csv");
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(data+","+totaltax+","+third);
			bw.flush();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		}
	}