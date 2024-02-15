#include <stdio.h>

void sigsum(int *n, int *ans) {
    *ans = 0;
    int i = 1;
    while (i <= *n) {
        printf("%d\n", i);
        *ans += i++;
    };
}

int f() {
    int x, y;
    x = 10;
    sigsum(&x, &y);
    return y;
}

int g() {
    int x;
    x = 10;
    sigsum(&x, &x);
    return x;
}

int main() {
    f();
    return 0;
}
