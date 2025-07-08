// #include <stdio.h>
// #include <stdlib.h>
// #include <time.h>

// void swap(int *n1, int *n2){
//     int temp = *n1;
//     *n1 = *n2;
//     *n2 = temp;
// }

// void heapify(int arr[], int n, int i){
//     int largest = i;
//     int left = 2 * i + 1;
//     int right = 2 * i + 2;

//     if(left < n && arr[left] > arr[largest]) largest = left;

//     if(right < n && arr[right] > arr[largest]) largest = right;

//     if(largest != i){
//         // swap(&arr[i], &arr[largest]);
//         int temp = arr[i];
//         arr[i] = arr[largest];
//         arr[largest] =temp;
//         heapify(arr, n, largest);
//     }

// }

// void heap_sort(int arr[], int n){
//     for(int i = n / 2 - 1;i>=0;i--){
//         heapify(arr, n, i);
//         for(int i = n-1;i>0;i--){
//             // swap(&arr[0], &arr[i]);
//             int temp = arr[0];
//             arr[0] = arr[i];
//             arr[i] = temp;
//             heapify(arr, i, 0);
//         }
//     }
// }

// void bubble_sort(int arr[], int n){
//     int i, j, temp;
//     for(i = 0; i < n - 1; i++){
//         for(j = 0; j < n - i - 1; j++){
//             if(arr[j] > arr[j + 1]){
//                 temp = arr[j + 1];
//                 arr[j + 1] = arr[j];
//                 arr[j] = temp;
//             }
//         }
//     }
// }

// void insertion_sort(int arr[], int n){
//     int i, j, key;
//     for(i = 1; i < n; i++){
//         key = arr[i];
//         j = i - 1;
//         while(j >= 0 && arr[j] > key){
//             arr[j + 1] = arr[j];
//             j = j - 1;
//         }
//         arr[j + 1] = key;
//     }    
// }

// void selection_sort(int arr[], int n){

//     int i, j, min_index;

//     for(i = 0;i<n;i++){
//         min_index = i;
//         for(j = i+1;j<n;j++){
//             if(arr[j] < arr[min_index]){
//                 min_index = j;
//             }
//         }
//         if(min_index != i){
//             swap(&arr[i], &arr[min_index]);
//         }
//     }
// }

// void quick_sort(int arr[], int low, int high) {
//     if (low < high) {
//         int pivot = arr[high];
//         int i = low - 1;

//         for (int j = low; j <= high - 1; j++) {
//             if (arr[j] < pivot) {
//                 i++;
//                 swap(&arr[i], &arr[j]);
//             }
//         }
//         swap(&arr[i + 1], &arr[high]);

//         int pi = i + 1;  

//         quick_sort(arr, low, pi - 1);
//         quick_sort(arr, pi + 1, high);
//     }
// }



// int main(){
//     FILE *f;
//     clock_t start, end;
//     double cpu_time_used;
//     int choice_sort;

//     int n = 10000;
//     int arr[n];

//     srand(time(NULL));

//     printf("Choose a method to sort:\n1. Heap Sort\n2. Bubble Sort\n3. Insertion Sort\n4. Selection Sort\n5. Quick Sort");
//     scanf("%d", &choice_sort);
//     switch(choice_sort){
//         case 1:
//             heap_sort(arr, n);
//             break;
//         case 2:
//             bubble_sort(arr, n);
//             break;
//         case 3:
//             insertion_sort(arr, n);
//             break;
//         case 4:
//             selection_sort(arr, n);
//             break;
//         case 5:
//             quick_sort(arr, 0, n);
//             break;
//         default:
//             printf("Invalid choice");
//             break;
//     }

//     f = fopen("best.txt", "w");
//     for(int i = 0; i < n; i++){
//         fprintf(f, "%d ", i);
//     }
//     fclose(f);

//     f = fopen("average.txt", "w");
//     for(int i = 0; i < n; i++){
//         fprintf(f, "%d ", rand() % 1000);
//     }
//     fclose(f);

//     f = fopen("worst.txt", "w");
//     for(int i = n - 1; i >= 0; i--){
//         fprintf(f, "%d ", i);
//     }
//     fclose(f);

//     f = fopen("best.txt", "r");
//     for(int i = 0; i < n; i++){
//         fscanf(f, "%d", &arr[i]);
//     }
//     fclose(f);

//     printf("Best case time complexity: \n");
//     start = clock();
//     quick_sort(arr, 0, n);
//     end = clock();
//     cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
//     printf("Time taken: %f seconds\n", cpu_time_used);

//     f = fopen("average.txt", "r");
//     for(int i = 0; i < n; i++){
//         fscanf(f, "%d", &arr[i]);
//     }
//     fclose(f);

//     printf("Average case time complexity: \n");
//     start = clock();
//     quick_sort(arr, 0, n);
//     end = clock();
//     cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
//     printf("Time taken: %f seconds\n", cpu_time_used);

//     f = fopen("worst.txt", "r");
//     for(int i = 0; i < n; i++){
//         fscanf(f, "%d", &arr[i]);
//     }
//     fclose(f);

//     printf("Worst case time complexity: \n");
//     start = clock();
//     quick_sort(arr, 0, n);
//     end = clock();
//     cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
//     printf("Time taken: %f seconds\n", cpu_time_used);

//     return 0;
// }


#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void swap(int *n1, int *n2) {
    int temp = *n1;
    *n1 = *n2;
    *n2 = temp;
}

void heapify(int arr[], int n, int i) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;

    if (left < n && arr[left] > arr[largest])
        largest = left;

    if (right < n && arr[right] > arr[largest])
        largest = right;

    if (largest != i) {
        swap(&arr[i], &arr[largest]);
        heapify(arr, n, largest);
    }
}

void heap_sort(int arr[], int n) {
    // Build heap
    for (int i = n/2 - 1; i >= 0; i--) {
        heapify(arr, n, i);
    }

    // Extract elements
    for (int i = n-1; i > 0; i--) {
        swap(&arr[0], &arr[i]);
        heapify(arr, i, 0);
    }
}

void bubble_sort(int arr[], int n) {
    int i, j, temp;
    for (i = 0; i < n - 1; i++) {
        for (j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                temp = arr[j + 1];
                arr[j + 1] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

void insertion_sort(int arr[], int n) {
    int i, j, key;
    for (i = 1; i < n; i++) {
        key = arr[i];
        j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
}

void selection_sort(int arr[], int n) {
    int i, j, min_index;
    for (i = 0; i < n; i++) {
        min_index = i;
        for (j = i + 1; j < n; j++) {
            if (arr[j] < arr[min_index]) {
                min_index = j;
            }
        }
        if (min_index != i) {
            swap(&arr[i], &arr[min_index]);
        }
    }
}

void quick_sort(int arr[], int low, int high) {
    if (low < high) {
        int pivot = arr[high];
        int i = low - 1;

        for (int j = low; j <= high - 1; j++) {
            if (arr[j] < pivot) {
                i++;
                swap(&arr[i], &arr[j]);
            }
        }
        swap(&arr[i + 1], &arr[high]);

        int pi = i + 1;

        quick_sort(arr, low, pi - 1);
        quick_sort(arr, pi + 1, high);
    }
}

void generate_test_files(int n) {
    FILE *f;

    f = fopen("best.txt", "w");
    for (int i = 0; i < n; i++) {
        fprintf(f, "%d ", i);
    }
    fclose(f);

    f = fopen("average.txt", "w");
    for (int i = 0; i < n; i++) {
        fprintf(f, "%d ", rand() % 1000);
    }
    fclose(f);

    f = fopen("worst.txt", "w");
    for (int i = n - 1; i >= 0; i--) {
        fprintf(f, "%d ", i);
    }
    fclose(f);
}

void read_array_from_file(const char *filename, int arr[], int n) {
    FILE *f = fopen(filename, "r");
    for (int i = 0; i < n; i++) {
        fscanf(f, "%d", &arr[i]);
    }
    fclose(f);
}

int main() {
    int n = 10000;
    int arr[n];
    int choice_sort;
    clock_t start, end;
    double cpu_time_used;

    srand(time(NULL));

    generate_test_files(n);

    printf("Choose a method to sort:\n1. Heap Sort\n2. Bubble Sort\n3. Insertion Sort\n4. Selection Sort\n5. Quick Sort\n");
    scanf("%d", &choice_sort);

    char *cases[] = {"best.txt", "average.txt", "worst.txt"};
    char *labels[] = {"Best case", "Average case", "Worst case"};

    for (int c = 0; c < 3; c++) {
        read_array_from_file(cases[c], arr, n);

        start = clock();

        switch (choice_sort) {
            case 1:
                heap_sort(arr, n);
                break;
            case 2:
                bubble_sort(arr, n);
                break;
            case 3:
                insertion_sort(arr, n);
                break;
            case 4:
                selection_sort(arr, n);
                break;
            case 5:
                quick_sort(arr, 0, n - 1);
                break;
            default:
                printf("Invalid choice\n");
                return 1;
        }

        end = clock();
        cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

        printf("%s time: %f seconds\n", labels[c], cpu_time_used);
    }

    return 0;
}
