/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade5.por
* Data: 16/03/2026
* Autor: Anthony muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Ler o preço do litro de combustível e o valor que pretende abastecer.
* Calcular a quantidade de litros no abastecimento e exibir os dados. Calcular a quantidade de abastecimento e exibir os dados lidos e o valor calculado.
*/
programa
{
    funcao inicio()
    {
      real preco, valor, litros
      escreva("Digite o preço do litro:")
      leia(preco)
      escreva("Digite o valor que deseja abastecer:")
      leia(valor)
      litros = valor / preco
      escreva("\nPreço do litro: ", preco)
      escreva("\nValor abastecido: ", valor)
      escreva("\nQuantidade de litros: ", litros)
    }
}
