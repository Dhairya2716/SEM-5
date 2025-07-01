#include<stdio.h>

void main(){
    int n, a = 0, b = 1, c;
    printf("Enter the number: ");
    scanf("%d", &n);
    
    printf("Fibonacci Series: ");
    for(int i = 0; i < n; i++) {
        if(i <= 1) {
            c = i;
        } else {
            c = a + b; 
            a = b; 
            b = c; 
        }
        printf("%d ", c);
    }
}