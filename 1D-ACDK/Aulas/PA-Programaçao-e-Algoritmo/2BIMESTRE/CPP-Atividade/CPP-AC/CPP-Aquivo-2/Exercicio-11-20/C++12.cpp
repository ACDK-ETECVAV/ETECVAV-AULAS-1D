#include <stdio.h>

int main() {
    int v[15];
    int pares = 0, impares = 0;

    for(int i = 0; i < 15; i++) {
        scanf("%d", &v[i]);

        if(v[i] % 2 == 0)
            pares++;
        else
            impares++;
    }

    printf("Pares: %d\n", pares);
    printf("Impares: %d\n", impares);

    return 0;
}

