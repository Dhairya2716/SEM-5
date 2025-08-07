
import java.util.Vector;

public class dominating_set_graph {

    static Vector<Integer> g[];
    static boolean visited[];

    static Vector<Integer> DominatingSet(int v) {

        Vector<Integer> S = new Vector<>();
        for (int i = 0; i < v; i++) {
            if (!visited[i]) {
                S.add(i);
                visited[i] = true;
                for (int j = 0; j < g[i].size(); j++) {
                    int neighbor = g[i].get(j);
                    if (!visited[neighbor]) {
                        visited[neighbor] = true;
                    }
                }
            }
        }
        return S;
    }

    public static void main(String[] args) {

        int v, e, x, y;

        v = 4;
        e = 4;
        g = new Vector[v];
        visited = new boolean[v];
        for (int i = 0; i < v; i++) {
            g[i] = new Vector<>();
        }

        int graph[][] = {
            {1, 2},
            {1, 3},
            {3, 4},
            {2, 4},};

        for (int i = 0; i < e; i++) {
            x = graph[i][0] - 1;
            y = graph[i][1] - 1;
            g[x].add(y);
            g[y].add(x);
        }

        Vector<Integer> result = DominatingSet(v);

        System.out.println("Dominating set: ");
        for (int i : result) {
            System.out.println(i + 1 + " ");
        }

    }
}

// visited[] boolean
// Vector<Integer> S = new Vector<Integer>();
// Vector<Integer> graph = new Vector<Integer>(); new vector<Integer> store kari devanu
// Vector<Integer> vs = new Vector<Integer>();
// function vector:
// for(int i : v){
//      if(!visited[i]){
//          S.add(visited[i]);
//          visited[i] = true;
//          
//  }
//}
//
// string list =  new SynchronizedList(new ArrayList<Integer>()); second form of vector
//
// diff b/w vector and arraylist
// Vector is synchronized, ArrayList is not.
// Vector can grow and shrink dynamically, ArrayList can also grow but not shrink.
// Vector is slower than ArrayList due to synchronization overhead.
// Vector is thread-safe, ArrayList is not thread-safe.
// Vector is a legacy class, ArrayList is part of the Java Collections Framework.
