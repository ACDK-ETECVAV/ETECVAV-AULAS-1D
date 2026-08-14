"""
    Autor: Calebe Barros
    Data:  14/08/2026
    Descrição: Lê um número inteiro e informa se ele é positivo, negativo ou zero.
    Versão adaptada a partir do exemplo em C++ preparado por Kael Elodie Whitmore.
"""

numero = int(input("Digite um numero inteiro: "))

if numero > 0:
    print("O numero e positivo.")
elif numero < 0:
    print("O numero e negativo.")
else:
    print("O número é zero")
