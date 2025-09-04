
import java.util.Scanner;

public class cut_vertex {

    private static int V = 4;
    private static boolean[] visited;
    private static int[] disc;
    private static int[] low;
    private static int[] parent;
    private static boolean[] isCutVertex;
    private static int time;

    public static void cut_vertex(int[][] graph) {
        visited = new boolean[V];
        disc = new int[V];
        low = new int[V];
        parent = new int[V];
        isCutVertex = new boolean[V];
        time = 0;

        for (int i = 0; i < V; i++) {
            parent[i] = -1;
            visited[i] = false;
        }

        for (int i = 0; i < V; i++) {
            if (!visited[i]) {
                dfs(i, graph);
            }
        }

        System.out.println("Cut vertices (articulation points):");
        for (int i = 0; i < V; i++) {
            if (isCutVertex[i]) {
                System.out.print((i + 1) + " ");
            }
        }
        System.out.println();
    }

    private static void dfs(int u, int[][] graph) {
        visited[u] = true;
        disc[u] = low[u] = ++time;
        int children = 0;

        for (int v = 0; v < V; v++) {
            if (graph[u][v] == 1) {
                if (!visited[v]) {
                    children++;
                    parent[v] = u;
                    dfs(v, graph);
                    low[u] = Math.min(low[u], low[v]);

                    if (parent[u] == -1 && children > 1) {
                        isCutVertex[u] = true;
                    }
                    if (parent[u] != -1 && low[v] >= disc[u]) {
                        isCutVertex[u] = true;
                    }
                } else if (v != parent[u]) {
                    low[u] = Math.min(low[u], disc[v]);
                }
            }
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[][] graph = {
            {0, 1, 0, 0},
            {1, 0, 1, 0},
            {0, 1, 0, 1},
            {0, 0, 1, 0}
        };

        cut_vertex(graph);

        sc.close();
    }
}
