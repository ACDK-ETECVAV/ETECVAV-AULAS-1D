#include <iostream>
using namespace std;

int main() {

    int numero;
    int maior;
    int menor;

    cout << "Digite um numero: ";
    cin >> numero;

    maior = numero;
    menor = numero;

    for(int i = 1; i < 10; i++) {

        cout << "Digite outro numero: ";
        cin >> numero;

        if(numero > maior) {
            maior = numero;
        }

        if(numero < menor) {
            menor = numero;
        }
    }

    cout << "Maior numero = " << maior << endl;
    cout << "Menor numero = " << menor << endl;

    return 0;
}
