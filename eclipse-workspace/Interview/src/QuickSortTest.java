
public class QuickSortTest {
	void sort(int arr[],int low,int high) {
	if(low<high) {
		int pi = partition(arr,low,high);
		
	}
	}
int partition(int[] arr, int low, int high) {
	int pivote = arr[high];
	int i= (low-1);
	for(int j=low;j<high;j++) {
		
	}
	return 0;
	}
public static void main(String[] args) {
	int arr[] = {10,7,8,9,1,5};
	int n = arr.length;
	QuickSortTest ob = new QuickSortTest();
	ob.sort(arr,0,n-1);
	System.out.println("Sorted Array is:");
	System.out.println(arr);
}
}
