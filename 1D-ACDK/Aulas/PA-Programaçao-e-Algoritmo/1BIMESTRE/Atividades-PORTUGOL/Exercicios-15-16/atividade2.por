/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade2.por
* Data: 15/03/2026
* Autor: Anthony muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Descrição: Ler o nome e a idade do usuário. Calcular a idade em meses e dias. Exibir o nome e a idade em anos, meses e dias.
*/
programa
{
    funcao inicio()
    {
        cadeia nome
        inteiro idade, meses, dias

        escreva("Digite seu nome: ")
        leia(nome)

        escreva("Digite sua idade: ")
        leia(idade)

        meses = idade * 12
        dias = idade * 365

        escreva("\nNome: ", nome)
        escreva("\nIdade em anos: ", idade)
        escreva("\nIdade em meses: ", meses)
        escreva("\nIdade em dias: ", dias)
    }
}
