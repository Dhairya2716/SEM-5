#include<stdio.h>

void main(){
    int n;
    printf("Enter a number: ");
    scanf("%d",&n);
    int sum = 0;
    for(int i = 1;i<=n;i++){
        sum += i;
    }
    printf("Sum of first %d numbers is: %d", n, sum);
}