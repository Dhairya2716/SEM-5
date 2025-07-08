import java.util.*;

public class Dfs {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Enter the number of vertices:");
        int V = sc.nextInt();
        System.out.println("Enter the number of edges:");
        int E = sc.nextInt();

        ArrayList<ArrayList<Integer>> adj = new ArrayList<>();
        for (int i = 0; i < V; i++) {
            adj.add(new ArrayList<>());
        }

        System.out.println("Enter the edges (u v):");
        for (int i = 0; i < E; i++) {
            int u = sc.nextInt();
            int v = sc.nextInt();
            adj.get(u).add(v);
            adj.get(v).add(u);
        }

        System.out.println("DFS Traversal:");
        System.out.println(dfs(V, adj));

        sc.close();
    }

    public static ArrayList<Integer> dfs(int V , ArrayList<ArrayList<Integer>> adj){
        ArrayList<Integer> result = new ArrayList<>();
        boolean[] visited = new boolean[V];

        for(int i = 0;i<V;i++){

            if(!visited[i]){
                Stack<Integer> st = new Stack<>();
                st.push(i);
                visited[i] = true;

                while(!st.isEmpty()){
                    int temp = (int)st.pop();
                    result.add(temp);

                    for(int neighbor : adj.get(temp)){
                        if (!visited[neighbor]){
                        st.push(neighbor);
                        visited[neighbor] = true;
                }
            }
        }
            }

        }

        return result;
    }
}