package Systango;
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.IOException;
public class Test {
	public static void main(String[] args) {
		String command = "notepad.exe";
		Runtime run = Runtime.getRuntime();
		try {
			run.exec(command);
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Robot robot = null;
			try {
				robot = new Robot();	
			} catch (AWTException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}