/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade9.por
* Data: 18/03/2026
* Autor: Anthony muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Ler o peso de um boi e o percentual de engorda. Calcular e exibir o novo peso do boi.
*/
programa
{
    funcao inicio()
    {
        real peso, percentual, aumento, novoPeso
        escreva("Digite o peso do boi: ")
        lEia(peso)
        escreva("Digite o percentual de engorda: ")
        Leia(percentual)
        aumento = peso * percentual / 100
        novoPeso = peso + aumento
        escreva("Novo peso do boi: ", novoPeso)
    }
}
