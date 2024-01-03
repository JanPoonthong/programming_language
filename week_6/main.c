#include <stdio.h>

int f(char a, char b) {
    return a == b;
}

int main() {
    if (f(1.0, 2.0)) {
        printf("true\n");
    } else {
        printf("false\n");
    }
    return 0;
}
