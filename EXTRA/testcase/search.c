#include <stdio.h>
#include <stdlib.h>
#include <time.h>


void linear_search(int arr[], int n, int key) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == key) return;
    }
}

void binary_search(int arr[], int n, int key) {
    int left = 0, right = n - 1, mid;
    while (left <= right) {
        mid = left + (right - left) / 2;
        if (arr[mid] == key) return;
        else if (arr[mid] < key) left = mid + 1;
        else right = mid - 1;
    }
}

void recursion_binary_search(int arr[], int left, int right, int key) {
    if (left > right) return;

    int mid = left + (right - left) / 2;
    if (arr[mid] == key) return;
    else if (arr[mid] < key) recursion_binary_search(arr, mid + 1, right, key);
    else recursion_binary_search(arr, left, mid - 1, key);
}


void load_data(const char* filename, int arr[], int n) {
    FILE *f = fopen(filename, "r");
    for (int i = 0; i < n; i++) {
        fscanf(f, "%d", &arr[i]);
    }
    fclose(f);
}

void run_search(const char* label, const char* filename, int arr[], int n, int key, int algo_choice) {
    load_data(filename, arr, n);
    clock_t start = clock();

    if (algo_choice == 1) linear_search(arr, n, key);
    else if (algo_choice == 2) binary_search(arr, n, key);
    else if (algo_choice == 3) recursion_binary_search(arr, 0, n - 1, key);

    clock_t end = clock();
    double time_taken = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("%s:\nTime taken: %f seconds\n\n", label, time_taken);
}

int main() {
    const int n = 100000;
    int arr[n], key;
    FILE *f;

    
    srand(time(NULL));

    f = fopen("best.txt", "w");
    for (int i = 0; i < n; i++) fprintf(f, "%d ", i);
    fclose(f);

    f = fopen("average.txt", "w");
    for (int i = 0; i < n; i++) fprintf(f, "%d ", rand() % 1000);
    fclose(f);

    f = fopen("worst.txt", "w");
    for (int i = n - 1; i >= 0; i--) fprintf(f, "%d ", i);
    fclose(f);

    
    int algo_choice, case_choice;

    printf("Choose Search Algorithm:\n");
    printf("1. Linear Search\n2. Binary Search\n3. Recursive Binary Search\n> ");
    scanf("%d", &algo_choice);

    if (algo_choice < 1 || algo_choice > 3) {
        printf("Invalid algorithm choice.\n");
        return 1;
    }

    printf("Enter element to search: ");
    scanf("%d", &key);


    if (algo_choice == 2 || algo_choice == 3) {
        printf("\nBinary Search works only on sorted data. Automatically running on BEST case.\n\n");
        run_search("Best Case", "best.txt", arr, n, key, algo_choice);
    } else {
        printf("Choose Test Case:\n");
        printf("1. Best Case\n2. Average Case\n3. Worst Case\n4. All Cases\n> ");
        scanf("%d", &case_choice);

        switch (case_choice) {
            case 1:
                run_search("Best Case", "best.txt", arr, n, key, algo_choice);
                break;
            case 2:
                run_search("Average Case", "average.txt", arr, n, key, algo_choice);
                break;
            case 3:
                run_search("Worst Case", "worst.txt", arr, n, key, algo_choice);
                break;
            case 4:
                run_search("Best Case", "best.txt", arr, n, key, algo_choice);
                run_search("Average Case", "average.txt", arr, n, key, algo_choice);
                run_search("Worst Case", "worst.txt", arr, n, key, algo_choice);
                break;
            default:
                printf("Invalid test case choice.\n");
                return 1;
        }
    }

    return 0;
}
