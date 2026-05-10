/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade6.por
* Data: 16/03/2026
* Autor: Anthony muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Ler o peso de uma pessoa em quilos, calcular e mostrar o peso em gramas.
*/
programa
{
    funcao inicio()
    {
      real kg, gramas
      escreva("Digite seu peso em kg: ")
      leia(kg)
      gramas = kg * 1000
      escreva("\nPeso em kg: ", kg)
      escreva("\nPeso em gramas: ", gramas)
    }
}
