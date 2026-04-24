/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade8.por
* Data: 16/03/2026
* Autor: Anthony muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* O vendedor recebe seu salário fixo acrescido de comissões de vendas, calculada a partir do percentual do valor de suas vendas.
* Ler o salário fixo do vendedor, o valor de suas vendas e o percentual sobre as vendas. Calcular e exibir o salário final do vendedor.
*/
programa
{
    funcao inicio()
    {
        real salarioFixo, vendas, percentual, comissao, salarioFinal
        escreva("Digite o salário fixo: ")
        leia(salarioFixo)
        escreva("Digite o valor das vendas: ")
        leia(vendas)
        escreva("Digite o percentual de comissão: ")
        leia(percentual)
        comissao = vendas * percentual / 100
        salarioFinal = salarioFixo + comissao
        escreva("\nSalário fixo: ", salarioFixo)
        escreva("\nVendas: ", vendas)
        escreva("\nComissão: ", comissao)
        escreva("\nSalário final: ", salarioFinal)
    }
}
