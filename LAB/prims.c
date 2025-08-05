#include <stdio.h>
#include <limits.h>

#define V 7

void main()
{

    int graph[V][V] = {
        {0, 1, 0, 4, 0, 0, 0},
        {1, 0, 2, 6, 4, 0, 0},
        {0, 2, 0, 0, 5, 6, 0},
        {4, 6, 0, 0, 3, 0, 4},
        {0, 4, 5, 3, 0, 8, 7},
        {0, 0, 6, 0, 8, 0, 3},
        {0, 0, 0, 4, 7, 3, 0}};

    int visited[V] = {0};
    visited[0] = 1;

    int i, j, edges = 0;
    int min_cost = 0;

    while (edges < V - 1)
    {
        int min = INT_MAX;
        int x = -1, y = -1;
        for (i = 0; i < V; i++)
        {
            if (visited[i])
            {
                for (j = 0; j < V; j++)
                {
                    if (!visited[j] && graph[i][j] != 0)
                    {
                        if (graph[i][j] < min) 
                        {
                            min = graph[i][j]; 
                            x = i; 
                            y = j; 
                        }
                    }
                }
            }
        }
        if (x != -1 && y != -1)
        {
            min_cost += graph[x][y];
            visited[y] = 1;
            edges++;
        }
    }

    printf("mininum cost = %d", min_cost);
}