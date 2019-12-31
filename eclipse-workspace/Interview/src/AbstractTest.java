abstract class Abs{
	int i= 10;
	int j= 2;
	abstract void sum(); 
	int mul() {
	System.out.println("multiply..");	
	return 0;
	}
}
public class AbstractTest extends Abs{
public static void main(String[] args) {
AbstractTest ab = new AbstractTest();
ab.sum();
ab.mul();	
}
void sum() {
	System.out.println("hello in sum");
}
}
