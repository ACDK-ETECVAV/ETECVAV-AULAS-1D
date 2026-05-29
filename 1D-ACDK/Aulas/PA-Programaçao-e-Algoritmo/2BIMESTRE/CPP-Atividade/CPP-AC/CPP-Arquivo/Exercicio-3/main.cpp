#include <iostream>
using namespace std;

int main() {

    int numero;
    int soma = 0;

    cout << "Digite um numero: ";
    cin >> numero;

    while(numero >= 0) {

        soma = soma + numero;

        cout << "Digite outro numero: ";
        cin >> numero;
    }

    cout << "Soma = " << soma;

    return 0;
}
