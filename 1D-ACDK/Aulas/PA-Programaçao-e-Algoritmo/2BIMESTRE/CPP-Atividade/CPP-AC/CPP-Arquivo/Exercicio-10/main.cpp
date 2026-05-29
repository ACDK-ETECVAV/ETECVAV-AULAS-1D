#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main() {

    srand(time(0));

    int secreto = rand() % 100 + 1;

    int palpite = 0;
    int tentativas = 0;

    while(palpite != secreto) {

        cout << "Digite seu palpite: ";
        cin >> palpite;

        tentativas++;

        if(palpite > secreto) {

            cout << "Muito alto!" << endl;

        } else if(palpite < secreto) {

            cout << "Muito baixo!" << endl;

        } else {

            cout << "Correto!" << endl;
            cout << "Tentativas: " << tentativas << endl;
        }
    }

    return 0;
}
