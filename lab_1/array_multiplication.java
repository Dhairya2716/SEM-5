import java.util.Scanner;

public class array_multiplication{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
        System.out.print("Enter the number of rows: ");
        int rows = sc.nextInt();
        System.out.print("Enter the number of columns: ");
        int cols = sc.nextInt();
        int count = 0;
        int[][] arr1 = new int[rows][cols];
        int[][] arr2 = new int[rows][cols];
        int[][] arr3 = new int[rows][cols];
        System.out.println("Enter the elements of the 2D arr1: ");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                System.out.print("Element at "+count+" is : ");
                arr1[i][j] = sc.nextInt();
                count++;
            }
        }
        count = 0;
        System.out.println("Enter the elements of the 2D arr2: ");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                System.out.print("Element at "+count+" is : ");
                arr2[i][j] = sc.nextInt();
                count++;
            }
        }
        System.out.println("Addition of two arrays are: ");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                arr3[i][j] = arr1[i][j] * arr2[i][j];
                System.out.print(arr3[i][j]+" ");
            }
            System.out.println(" ");
        }
        sc.close();
	}
}