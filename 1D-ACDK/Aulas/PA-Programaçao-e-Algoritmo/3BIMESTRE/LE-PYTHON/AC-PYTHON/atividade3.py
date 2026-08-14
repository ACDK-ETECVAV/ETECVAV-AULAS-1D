"""
    Autor: Calebe Barros
    Data: 14/08/2026
    Descrição: Lê um número inteiro positivo e exibe a contagem de 1 até esse número.
    Versão adaptada a partir do exemplo em C++ preparado por Kael Elodie Whitmore.
"""

numero = int(input("Digite um numero inteiro positivo: "))
contador = 1

if numero > 0:
    while contador <= numero:
        print(contador)
        contador += 1
else:
    print("Numero invalido. Digite um valor positivo.")
