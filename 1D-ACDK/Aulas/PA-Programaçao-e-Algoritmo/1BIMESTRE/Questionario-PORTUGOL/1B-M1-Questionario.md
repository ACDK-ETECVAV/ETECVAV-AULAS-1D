# Questionário — Princípios de Programação de Computadores

## Integrantes do grupo

- Anthony muraro
- Calebe Barros Ramalho Da Silva
- Daniel Teixeira Vitoriano
- Kelven Chetz Man Gallippi

---

## Exercício 1 — Conceitual  
**Responsável:** Ronildo Aparecido

Um algoritmo é uma sequência de passos organizados que serve para resolver um problema ou realizar uma tarefa.

A lógica de programação é a forma de organizar o raciocínio para criar esses passos de maneira correta e eficiente.

Ou seja, a lógica é o pensamento, enquanto o algoritmo é a aplicação desse pensamento.

**Exemplo do cotidiano:**
Escovar os dentes:
1. pegar a escova  
2. colocar pasta  
3. escovar os dentes  
4. enxaguar  

---

## Exercício 2 — Aplicação  
**Responsável:** (coloque o nome)

### Algoritmo em linguagem natural

1. ler o primeiro número  
2. ler o segundo número  
3. ler o terceiro número  
4. comparar os valores  
5. identificar o maior  
6. mostrar o resultado  

### Pseudocódigo (Portugol)

```portugol
/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade10.por
* Data: 21/04/2026
* Autores: Anthony muraro, Calebe Barros Ramalho Da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
*/

programa
{
    funcao inicio()
    {
        inteiro a, b, c, maior

        escreva("Digite o primeiro número: ")
        leia(a)

        escreva("Digite o segundo número: ")
        leia(b)

        escreva("Digite o terceiro número: ")
        leia(c)

        maior = a

        se (b > maior)
        {
            maior = b
        }

        se (c > maior)
        {
            maior = c
        }

        escreva("O maior número é: ", maior)
    }
}
