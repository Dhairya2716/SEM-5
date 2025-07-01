#include<stdio.h>

void main(){
    int x, y;
    printf("Enter value of x: ");
    scanf("%d", &x);
    printf("Enter value of y: ");
    scanf("%d", &y);
    int result = 1;
    for(int i = 0; i < y; i++){
        result *= x;
    }
    printf("%d to the power of %d is: %d", x, y, result);
}