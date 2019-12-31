
interface Y{
	void sum();
}
interface Z{
	void sum();
}
public class interfaceTest implements Z,Y {
public static void main(String[] args) {
	System.out.println("Implement multiple inheritane in java..");
	interfaceTest t = new interfaceTest();
	t.sum();
}

@Override
public void sum() {
	System.out.println("hello in sum..");
}
}
