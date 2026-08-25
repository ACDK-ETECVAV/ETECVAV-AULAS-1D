"""
    Autor: Anthony Muraro
    Data: 25/08/2026
    Descrição: Calcula a média de notas válidas entre 0 e 10 usando while.
"""

contador = 1
positivos = 0
negativos = 0
zeros = 0

while contador <= 10:
    numero = int(input(f"Digite o {contador}° numero: "))

    if numero > 0:
        positivos += 1
    elif numero < 0:
        negativos += 1
    else:
        zeros += 1

    contador += 1

print("Positivos:", positivos)
print("Negativos:", negativos)
print("Zeros:", zeros)
