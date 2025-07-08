
public class Adjaceny_Graph {

    public static void main(String[] args) {
        int[][] adj = {{0, 1}, {1, 2}, {1, 3}, {2, 3}, {3, 0}};
        int[][] visited = new int[adj.length][2];
        for (int i = 0; i < adj.length; i++) {
            int node = adj[i][0];
            for (int j = i; j < adj.length; j++) {
                visited[i][0] = adj[j][0];
                if (node == adj[j][0] && visited[i][0] != adj[j][1]) {
                    visited[i][1] = adj[j][1];
                    System.out.println(adj[i][0] + "=>" + adj[j][1]);
                }
            }
        }
    }
}
