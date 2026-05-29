#include <iostream>
using namespace std;

int main() {

    int limite;
    int a = 0;
    int b = 1;
    int proximo;

    cout << "Digite um numero entre 50 e 100: ";
    cin >> limite;

    if(limite < 50 || limite > 100) {

        cout << "Numero invalido";

    } else {

        cout << a << " ";
        cout << b << " ";

        proximo = a + b;

        while(proximo <= limite) {

            cout << proximo << " ";

            a = b;
            b = proximo;

            proximo = a + b;
        }
    }

    return 0;
}
