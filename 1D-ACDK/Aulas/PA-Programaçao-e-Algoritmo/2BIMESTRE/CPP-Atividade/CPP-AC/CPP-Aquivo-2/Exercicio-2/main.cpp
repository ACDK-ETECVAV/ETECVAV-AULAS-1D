/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

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

