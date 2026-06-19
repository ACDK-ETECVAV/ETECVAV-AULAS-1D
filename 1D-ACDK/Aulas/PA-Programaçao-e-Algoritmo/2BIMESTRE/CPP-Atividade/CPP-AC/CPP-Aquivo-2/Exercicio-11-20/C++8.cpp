A área do círculo é:
A=?r2A = \pi r^2A=?r2
rrr
 
A=?r2?28.27A = \pi r^2 \approx 28.27A=?r2?28.27
C=2?r?18.85C = 2\pi r \approx 18.85C=2?r?18.85
r = 3.00
#include <stdio.h>

float area(float raio) {
    return 3.14 * raio * raio;
}

int main() {
    float raio, soma = 0;

    for(int i = 0; i < 5; i++) {
        printf("Raio: ");
        scanf("%f", &raio);

        soma += area(raio);
    }

    printf("Soma das areas: %.2f\n", soma);

    return 0;
}

