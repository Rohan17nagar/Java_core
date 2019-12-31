abstract class demo{
	void show() {
		System.out.println("hello abstract class");
	}
	abstract void show2();
}
public class Demo2 extends demo {

	public static void main(String[] args) {
		Demo2 obj = new Demo2();
		obj.show2();
		obj.show();
	}
	@Override
	void show2() {
		System.out.println("hello java in absttract method show 2");
	}

}