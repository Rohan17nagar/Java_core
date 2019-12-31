package Systango;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;

import javax.swing.JOptionPane;

public class WriteInCsv {

	public static void main(String[] args) {
		
		String id = "1234";
		String name = "Bob";
		String age = "22";
		String filePath = "cake.csv";
		saveRecord(id, name, age, filePath);	
	}
	public static void saveRecord(String id,String name,String age,String filePath) {
	try {
		FileWriter fw = new FileWriter(filePath,true);
		BufferedWriter bw = new BufferedWriter(fw);
		PrintWriter pw = new PrintWriter(bw);
		
		pw.println(id +"," + name +"," + age);
		pw.flush();
		pw.close();
		
		JOptionPane.showMessageDialog(null, "Record Saved");
		
	}catch (Exception e) {
		JOptionPane.showMessageDialog(null, "Record not saved");
	}
	
		
	}
	

}
