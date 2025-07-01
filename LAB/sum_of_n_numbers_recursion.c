#include <stdio.h>

int sum(int n) {
    if (n == 0) {
        return 0;
    }
    return n + sum(n - 1);
}

void main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
    int result = sum(n);
    printf("The sum of the first %d numbers is: %d\n", n, result);

}