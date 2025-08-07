
public class adjacency_matrix {

    public static void main(String[] args) {

        // System.out.println("Enter number of rows: ");
        // int N = sc.nextInt();
        // System.out.println("Enter number of cols: ");
        // int M = sc.nextInt();
        int N = 5;
        int M = 4;

        int[][] matrix = {{1, 2}, {2, 3}, {4, 5}, {1, 5}};
        int[][] result = new int[N][N];

        for (int i = 0; i < M; i++) {
            int u = matrix[i][0];
            int v = matrix[i][1];

            result[u - 1][v - 1] = 1;
            result[v - 1][u - 1] = 1;
        }

        System.out.println("adjacnecy matrix of given graph is : ");

        System.out.println("{ ");
        for (int i = 0; i < N; i++) {
            System.out.print(" { ");
            for (int j = 0; j < N; j++) {
                System.out.print(result[i][j] + " ");
            }
            System.out.println("}");
        }
        System.out.print("} ");

    }

}
