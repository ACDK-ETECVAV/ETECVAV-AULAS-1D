/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade4.por
* Data: 15/03/2026
* Autor: Anthony muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Descrição: Ler 4 notas, calcular a média ponderada com os pesos 1, 2, 3 e 4 respectivamente e exibir as notas e o resultado da média.
*/
programa
{
    funcao inicio()
    {
        real n1, n2, n3, n4, media
        escreva("Digite a primeira nota: ")
        leia(n1)
        escreva("Digite a segunda nota: ")
        leia(n2)
        escreva("Digite a terceira nota: ")
        leia(n3)
        escreva("Digite a quarta nota: ")
        leia(n4)
        media = (n1*1 + n2*2 + n3*3 + n4*4) / 10
        escreva("\nNotas: ", n1, ", ", n2, ", ", n3, ", ", n4)
        escreva("\nMédia ponderada: ", media)
    }
}
