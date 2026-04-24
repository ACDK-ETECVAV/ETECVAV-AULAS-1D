/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade3.por
* Data: 15/03/2026
* Autor: Anthony muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Descrição: Ler a base e altura de um triângulo. Calcular e exibir a área do triângulo sabendo que área = base * altura / 2.
*/
programa
{
    funcao inicio()
    {
      real base, altura, area
      escreva("Digite a base: ")
      leia(base)
      escreva("Digite a altura: ")
      leia(altura)
      area = (base * altura) / 2
      escreva("A área do triângulo é: ", area)
    }
}
