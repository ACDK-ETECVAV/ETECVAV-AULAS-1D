#include <iostream>
using namespace std;

int main() {

    int numero;
    int soma = 0;
    int multiplicacao = 1;

    while(soma <= 100) {

        cout << "Digite um numero: ";
        cin >> numero;

        soma = soma + numero;

        multiplicacao = multiplicacao * numero;
    }

    cout << "Multiplicacao = " << multiplicacao;

    return 0;
}
