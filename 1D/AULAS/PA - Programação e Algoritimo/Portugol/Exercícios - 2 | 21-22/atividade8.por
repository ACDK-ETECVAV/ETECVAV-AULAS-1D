/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade11.por
* Data: 23/04/2026
* Autor: Anthony Muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Ler um caractere. Verificar se o caractere lido é uma vogal. Exibir o
* caractere lido com a informação se é ou não uma vogal.
*/

programa
{
    funcao inicio()
    {
        caractere letra;

        escreva("Digite um caractere: ");
        leia(letra);

        se (letra == 'a' ou letra == 'e' ou letra == 'i' ou letra == 'o' ou letra == 'u' ou
            letra == 'A' ou letra == 'E' ou letra == 'I' ou letra == 'O' ou letra == 'U')
        {
            escreva("O caractere ", letra, " é uma vogal\n");
        }
        senao
        {
            escreva("O caractere ", letra, " não é uma vogal\n");
        }
    }
}