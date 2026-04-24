/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade13.por
* Data: 20/03/2026
* Autor: Anthony Muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Ler um número, verificar e exibir se o número é um quadrado perfeito, ou
* seja, se a raiz quadrada dele é um número inteiro.
*/

programa
{
    funcao inicio()
    {
        inteiro num, i;
        logico ehQuadrado;

        escreva("Digite um número: ");
        leia(num);

        ehQuadrado = falso;

        se (num >= 0)
        {
            para (i = 0; i * i <= num; i++)
            {
                se (i * i == num)
                {
                    ehQuadrado = verdadeiro;
                }
            }
        }

        se (ehQuadrado)
        {
            escreva("O número é um quadrado perfeito\n");
        }
        senao
        {
            escreva("O número NÃO é um quadrado perfeito\n");
        }
    }
}