interface E{
	void show();
	default void show1() {
		System.out.println("hello java 1");
	}
}
interface F{
	default void show1() {
		System.out.println("hello java 2");
	}
}
public class LambdaDemo implements E,F{

	public static void main(String[] args) {
	E obj = new LambdaDemo();
	obj.show1();
	obj.show();
	System.out.println("hello world..");
	}

	@Override
	public void show() {
		System.out.println("hello in show method...");
		
	}

	@Override
	public void show1() {
		// TODO Auto-generated method stub
		System.out.println("hloo in the main method");
	}
}