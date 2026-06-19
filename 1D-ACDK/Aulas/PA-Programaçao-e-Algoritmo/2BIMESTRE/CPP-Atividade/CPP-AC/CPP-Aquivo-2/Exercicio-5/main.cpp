#include <stdio.h>

int main() {
    int v[20];
    int indice = -1;

    for(int i = 0; i < 20; i++) {
        scanf("%d", &v[i]);

        if(v[i] < 0 && indice == -1)
            indice = i;
    }

    printf("Indice: %d\n", indice);

    return 0;
}
