#include<stdio.h>
#include<limits.h>

#define V 5

int findKey(int visited[], int dist[])
{
    int min = INT_MAX, key = -1;
    for (int j = 0; j < V; j++) {
        if (!visited[j] && dist[j] <= min) {
            min = dist[j];
            key = j;
        }
    }
    return key;
}

void dijkstra(int graph[V][V])
{
    int sum = 0;
    int dist[V], visited[V];
    for (int i = 0; i < V; i++) {
        dist[i] = INT_MAX;
        visited[i] = 0;
    }
    dist[0] = 0;
    for (int i = 0; i < V - 1; i++) {
        int key = findKey(visited, dist);
        visited[key] = 1;

        for (int j = 0; j < V; j++) {
            if (!visited[j] && graph[key][j] && dist[key] != INT_MAX &&
                dist[key] + graph[key][j] < dist[j]) {
                dist[j] = dist[key] + graph[key][j];
            }
        }
    }
    printf("Vertex\tDistance from Source\n");
    for (int i = 0; i < V; i++) {
        printf("%d\t%d\n", i, dist[i]);
        sum += dist[i];
    }
    printf("Total distance from source: %d\n", sum);
}

int main()
{

    int graph[V][V] = {
        {0, 9, 75, 0, 0},
        {0, 0, 95, 0, 42},
        {0, 0, 0, 51, 0},
        {0, 19, 0, 0, 0},
        {0, 0, 0, 31, 0},
    };

    dijkstra(graph);

    return 0;

}