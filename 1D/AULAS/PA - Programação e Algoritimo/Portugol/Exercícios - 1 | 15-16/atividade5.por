/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade5.por
* Data: 16/03/2026
* Autor: Calebe Barros Ramalho Da Silva
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
