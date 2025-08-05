// #include<stdio.h>
// #define V 8
// #include<stdlib.h>

// void enqueue(int queue[], int *rear, int value) {
//     queue[++(*rear)] = value;
// }

// void dequeue(int queue[], int *front) {
//     (*front)++;
// }

// void bfsHelper(int graph[V][V], int visited[V], int queue[], int *front, int *rear) {
//     while (*front <= *rear) {
//         int current = queue[*front];
//         dequeue(queue, front);
//         printf("%d ", current + 1);

//         for (int i = 0; i < V; i++) {
//             if (graph[current][i] != 0 && !visited[i]) {
//                 visited[i] = 1;
//                 enqueue(queue, rear, i);
//             }
//         }
//     }
// }

// void bfs(int graph[V][V]){
//     int visited[V] = {0};
//     int queue[V];
//     int front = 0, rear = -1;
//     visited[0] = 1;
//     enqueue(queue, &rear, 0);
//     bfsHelper(graph, visited, queue, &front, &rear);
//     printf("\n");
// }

// void main(){

//     int graph[V][V] = {
//         {0, 1, 1, 1, 1, 0, 0, 0},
//         {1, 0, 0, 0, 0, 1, 0, 0},
//         {1, 0, 0, 0, 0, 1, 0, 0},
//         {1, 0, 0, 0, 0, 0, 1, 0},
//         {1, 0, 0, 0, 0, 0, 1, 0},
//         {0, 1, 1, 0, 0, 0, 0, 1},
//         {0, 0, 0, 1, 1, 0, 0, 1},
//         {0, 0, 0, 0, 0, 1, 1, 0}
//     };

//     bfs(graph);

// }

//
//
//

// #include <stdio.h>
// #define V 8
// #include <stdbool.h>
// #include <stdlib.h>

// struct queue
// {
//     int queue[V];
//     int front;
//     int rear;
// };

// bool isFull(int rear)
// {
//     return rear == V - 1;
// }

// bool isEmpty(int front, int rear)
// {
//     return front > rear;
// }
// void enqueue(int queue[], int *rear, int value)
// {
//     queue[++(*rear)] = value;
// }
// void dequeue(int queue[], int *front)
// {
//     (*front)++;
// }

// void bfsHelper(int graph[V][V], int visited[V], struct queue *q)
// {
//     while (!isEmpty(q->front, q->rear))
//     {
//         int current = q->queue[q->front];
//         dequeue(q->queue, &q->front);
//         printf("%d ", current + 1);

//         for (int i = 0; i < V; i++)
//         {
//             if (graph[current][i] != 0 && !visited[i])
//             {
//                 visited[i] = 1;
//                 enqueue(q->queue, &q->rear, i);
//             }
//         }
//     }
// }
// void bfs(int graph[V][V])
// {
//     int visited[V] = {0};
//     struct queue q;
//     q.front = 0;
//     q.rear = -1;

//     visited[0] = 1;
//     enqueue(q.queue, &q.rear, 0);
//     bfsHelper(graph, visited, &q);
//     printf("\n");
// }
// void main()
// {
//     int graph[V][V] = {
//         {0, 1, 1, 1, 1, 0, 0, 0},
//         {1, 0, 0, 0, 0, 1, 0, 0},
//         {1, 0, 0, 0, 0, 1, 0, 0},
//         {1, 0, 0, 0, 0, 0, 1, 0},
//         {1, 0, 0, 0, 0, 0, 1, 0},
//         {0, 1, 1, 0, 0, 0, 0, 1},
//         {0, 0, 0, 1, 1, 0, 0, 1},
//         {0, 0, 0, 0, 0, 1, 1, 0}
//     };

//     bfs(graph);
// }

//
//
//

#include<stdio.h>
#include<stdbool.h>
#define V 8

void bfs(int graph[V][V], int start){
    bool visited[V] = {false};
    int queue[V];
    int front = 0, rear = -1;

    queue[rear++] = start;
    visited[start] = true;

    while(front < rear){
        int current =  queue[front++];
        printf("%d", current+1);

        for(int i = 0; i<V;i++){
            if(graph[current][i] == 1 && !visited[i]){
                queue[rear++] = i;
                visited[i] = true;
            }
        }
    }

}

void main(){
    int graph[V][V] = {
        {0, 1, 1, 1, 1, 0, 0, 0},
        {1, 0, 0, 0, 0, 1, 0, 0},
        {1, 0, 0, 0, 0, 1, 0, 0},
        {1, 0, 0, 0, 0, 0, 1, 0},
        {1, 0, 0, 0, 0, 0, 1, 0},
        {0, 1, 1, 0, 0, 0, 0, 1},
        {0, 0, 0, 1, 1, 0, 0, 1},
        {0, 0, 0, 0, 0, 1, 1, 0}
    };

    bfs(graph, 0);
}