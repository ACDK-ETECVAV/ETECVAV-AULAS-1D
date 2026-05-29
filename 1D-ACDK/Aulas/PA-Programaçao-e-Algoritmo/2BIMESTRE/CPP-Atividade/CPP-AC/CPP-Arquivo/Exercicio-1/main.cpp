#include <iostream>
using namespace std;

int main() {

    int numero;
    bool primo = true;

    cout << "Digite um numero: ";
    cin >> numero;

    if(numero < 2) {
        primo = false;
    } else {

        for(int i = 2; i < numero; i++) {

            if(numero % i == 0) {
                primo = false;
                break;
            }
        }
    }

    if(primo) {
        cout << "O numero eh primo";
    } else {
        cout << "O numero nao eh primo";
    }

    return 0;
}
