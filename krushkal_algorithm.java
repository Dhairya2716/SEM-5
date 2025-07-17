
import java.util.Arrays;

public class krushkal_algorithm {

    static int parent[];

    static int find(int u) {
        if (parent[u] != u) {
            parent[u] = find(parent[u]);
        }
        return parent[u];
    }

    static void union(int u, int v) {
        parent[find(u)] = find(v);
    }

    public static void main(String[] args) {
        int V = 5;
        int[][] Edges = {{0, 1, 10}, {1, 3, 15}, {2, 3, 4}, {2, 0, 6}, {0, 3, 5}};

        Arrays.sort(Edges, (a, b) -> a[2] - b[2]);

        parent = new int[V];

        for (int i = 0; i < V; i++) {
            parent[i] = i;
        }

        int totalWeight = 0;

        for (int edge[] : Edges) {
            int v = edge[0];
            int u = edge[1];
            int w = edge[2];

            if (find(u) != find(v)) {
                union(u, v);
                totalWeight += w;
                System.out.println(u + "-" + v + ':' + w);
            }
        }

        System.out.println("total weightage: " + totalWeight);
    }

}
