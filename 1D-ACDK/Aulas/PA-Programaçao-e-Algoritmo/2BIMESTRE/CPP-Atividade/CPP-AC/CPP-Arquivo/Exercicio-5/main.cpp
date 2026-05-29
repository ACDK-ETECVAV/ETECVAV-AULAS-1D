#include <iostream>
using namespace std;

int main() {

    int limite;
    int multiplo;

    cout << "Digite o limite: ";
    cin >> limite;

    cout << "Digite o multiplo: ";
    cin >> multiplo;

    for(int i = 1; i <= limite; i++) {

        if(i % multiplo == 0) {
            cout << i << endl;
        }
    }

    return 0;
}
