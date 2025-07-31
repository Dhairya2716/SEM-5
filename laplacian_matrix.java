
public class laplacian_matrix {

    public static int[][] adjacency_matrix(int mat[][], int V, int E) {

        int result[][] = new int[V][V];

        for (int i = 0; i < E; i++) {
            int u = mat[i][0];
            int v = mat[i][1];

            result[u - 1][v - 1] = 1;
            result[v - 1][u - 1] = 1;
        }

        return result;
    }

    public static int[][] degree_matrix(int mat[][], int V, int E) {

        int result[][] = new int[V][V];
        int degree[] = new int[V];

        for (int i = 0; i < E; i++) {
            int u = mat[i][0];
            int v = mat[i][1];

            degree[u - 1]++;
            degree[v - 1]++;

        }

        for (int i = 0; i < V; i++) {
            result[i][i] = degree[i];
        }

        return result;

    }

    public static int[][] laplacian(int mat1[][], int mat2[][], int V) {
        int result[][] = new int[V][V];

        for (int i = 0; i < V; i++) {
            for (int j = 0; j < V; j++) {
                result[i][j] = mat1[i][j] - mat2[i][j];
            }
        }

        return result;

    }

    public static void main(String[] args) {

        int V = 5;
        int E = 4;

        int matrix[][] = {{1, 2}, {2, 3}, {4, 5}, {1, 5}};

        int mat1[][] = adjacency_matrix(matrix, V, E);
        int mat2[][] = degree_matrix(matrix, V, E);

        int result[][] = laplacian(mat2, mat1, V);

        System.out.println("adjacency matrix : ");

        for (int i = 0; i < V; i++) {
            for (int j = 0; j < V; j++) {
                // System.out.print("element at [" + i + "]" + "[" + j + "] : " + mat1[i][j]);
                System.out.print(mat1[i][j] + " ");
            }
            System.out.println("");
        }

        System.out.println("degree matrix : ");

        for (int i = 0; i < V; i++) {
            for (int j = 0; j < V; j++) {
                // System.out.print("element at [" + i + "]" + "[" + j + "] : " + mat2[i][j]);
                System.out.print(mat2[i][j] + " ");
            }
            System.out.println("");
        }

        System.out.println("laplacian matrix : ");

        for (int i = 0; i < V; i++) {
            for (int j = 0; j < V; j++) {
                // System.out.print("element at [" + i + "]" + "[" + j + "] : " + result[i][j]);
                System.out.print(result[i][j] + " ");
            }
            System.out.println("");
        }

    }
}
