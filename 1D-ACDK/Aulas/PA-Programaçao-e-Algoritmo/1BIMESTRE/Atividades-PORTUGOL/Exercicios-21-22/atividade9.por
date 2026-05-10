/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade12.por
* Data: 23/04/2026
* Autor: Anthony Muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Ler três números inteiros e exibir o maior desses três números.
*/

programa
{
    funcao inicio()
    {
        inteiro n1, n2, n3, maior;

        escreva("Digite o primeiro número: ");
        leia(n1);

        escreva("Digite o segundo número: ");
        leia(n2);

        escreva("Digite o terceiro número: ");
        leia(n3);

        maior = n1;

        se (n2 > maior)
        {
            maior = n2;
        }

        se (n3 > maior)
        {
            maior = n3;
        }

        escreva("O maior número é: ", maior, "\n");
    }
}