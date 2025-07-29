#include <stdio.h>

struct Edge{
    int source;
    int dest;
    int weight;
};

int find(int parent[], int i){
    if(parent[i] == i) return i;
    return find(parent, parent[i]);
}

void unionSet(int parent[], int u, int v){
    parent[u] = v;
}

void swap(struct Edge *n1, struct Edge *n2){
    struct Edge temp = *n1;
    *n1 = *n2;
    *n2 = temp;
}

void edgeSort(struct Edge Edges[], int E){
    for(int i = 0; i < E; i++)
    {
        for(int j = i + 1; j < E; j++)
        {
            if(Edges[i].weight > Edges[j].weight)
            {
                swap(&Edges[i], &Edges[j]);
            }
        }
    }
}

void krushkal(struct Edge Edges[], int V, int E){
    int parent[V];

    int edge = 0;
    struct Edge mst[V-1];
    int minCost = 0;

    for(int i = 0; i < V; i++) parent[i] = i;

    edgeSort(Edges, E);

    for(int i = 0; i < E; i++)
    {
        int u = Edges[i].source;
        int v = Edges[i].dest;


        int ucomp = find(parent, u);
        int vcomp = find(parent, v);


        if(ucomp != vcomp)
        {
            mst[edge] = Edges[i];
            unionSet(parent, ucomp, vcomp);
            edge++;
            minCost += Edges[i].weight;
        }
        if(edge == V - 1) break;
    }
    printf("Total number of edges in MST are %d\n", edge);
    printf("Total cost in MST are %d\n", minCost);
}

int main(){

    int V = 8;
    int E = 12;

    struct Edge Edges[] = {
        {1,2,1},
        {1,4,4},
        {2,3,2},
        {2,5,4},
        {3,6,6},
        {2,4,6},
        {3,5,5},
        {4,5,3},
        {5,6,8},
        {4,7,4},
        {5,7,7},
        {6,7,3}
    };

    krushkal(Edges, V, E);

    return 0;
}