#include <stdio.h>

int power(int x, int y) {
    if (y == 0) {
        return 1; 
    }
    return x * power(x, y - 1); 
}

void main() {
    int x, y;
    printf("Enter value of x: ");
    scanf("%d", &x);
    printf("Enter value of y: ");
    scanf("%d", &y);
    int result = power(x, y);
    printf("%d to the power of %d is: %d\n", x, y, result);

}