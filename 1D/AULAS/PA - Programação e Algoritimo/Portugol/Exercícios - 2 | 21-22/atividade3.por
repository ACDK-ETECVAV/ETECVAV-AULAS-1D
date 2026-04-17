/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade10.por
* Data: 11/04/2026
* Autor: Calebe Barros Ramalho Da Silva
* Ler o valor de uma compra e calcular o desconto, de acordo com o valor total da compra:
* se for menor que R$100, não há desconto; se for entre R$100 e R$500, o desconto é de 10%; acima de R$500,
* o desconto é de 20%. Exibir o valor após aplicado o desconto.
*/

programa
{
    funcao inicio()
    {
        real valor, desconto, valorFinal
        escreva("Cálculo de Desconto\n\n")
        escreva("Digite o valor da compra: R$ ")
        leia(valor)
        se (valor < 100)
        {
            desconto = 0
        }
        senao se (valor <= 500)
        {
            desconto = valor * 0.10
        }
        senao
        {
            desconto = valor * 0.20
        }
        valorFinal = valor - desconto
        escreva("\nValor da compra: R$ ", valor)
        escreva("\nDesconto aplicado: R$ ", desconto)
        escreva("\nValor final: R$ ", valorFinal)
    }
}