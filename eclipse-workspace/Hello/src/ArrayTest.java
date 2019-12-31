public class ArrayTest {
	public static void main(String[] args) {
		int arr[] = new int[]{ 12, 13, 14, 15, 16,17,18,19,20,22,21,33}; 
		int i,j,count;
		int x=13,y=21;
	
		for(i=0;i<arr.length;i++) 
		if(arr[i]==x)
			break;
		
		for(j=0;j<arr.length;j++) 
			if(arr[j]==y)
				break;
		
		count = j-i;
		System.out.println(count-1);
	}
}
