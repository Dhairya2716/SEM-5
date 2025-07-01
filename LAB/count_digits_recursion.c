#include <stdio.h>

int count_digits(int n) {
    if (n == 0) {
        return 0;
    } else {
        return 1 + count_digits(n / 10);
    }
}

int main() {

    int n;
    printf("Enter a number to count it's digits: ");
    scanf("%d", &n);
    int count = count_digits(n);
    printf("Number of digits: %d", count);
}