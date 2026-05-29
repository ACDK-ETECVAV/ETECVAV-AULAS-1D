#include <iostream>
using namespace std;

int main() {

    int numero;
    int resultado = 1;

    cout << "Digite um numero: ";
    cin >> numero;

    for(int i = 0; i <= numero; i++) {

        cout << "2^" << i << " = " << resultado << endl;

        resultado = resultado * 2;
    }

    return 0;
}
