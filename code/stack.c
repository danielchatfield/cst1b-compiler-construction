#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Stack {
    int arr[100];
    int pos;
} Stack;


void push(Stack* stack, int val) {
    stack->arr[stack->pos] = val;
    (stack->pos)++;
}

int pop(Stack* stack) {
    if(stack->pos == 0) {
        fprintf(stderr,"Invalid input\n");
        exit(1);
    }
    return stack->arr[--(stack->pos)];
}
