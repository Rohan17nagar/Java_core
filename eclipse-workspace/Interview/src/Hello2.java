//threa d class...
class D extends Thread{
	public void run() {
		for(int i=0;i<10;i++) {
			System.out.println("hello1 "+i);
		}
	}
}
class C extends Thread{
	public void run() {
		for(int i=0;i<10;i++) {
			System.out.println("hello2 "+i);
		}
	}
	
}
public class Hello2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		D o1 = new D();
		C o2 = new C();
		o1.start();
		o2.start();
	}
}
