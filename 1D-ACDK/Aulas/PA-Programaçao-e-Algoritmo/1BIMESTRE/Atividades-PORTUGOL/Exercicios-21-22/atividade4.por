/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade10.por
* Data: 11/04/2026
* Autor: Anthony muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Ler o tempo de permanência de um veículo em um estacionamento.
* Calcular e exibir o preço a ser pago, considerando o tempo de permanência do veículo.
* As primeiras 2 horas custam R$ 2,00 cada, e cada hora adicional custa R$1,00.
*/

programa
{
    funcao inicio()
    {
        inteiro horas
        real valor
        escreva("Cálculo de Estacionamento\n\n")

        escreva("Digite o tempo de permanência (em horas): ")
        leia(horas)
        se (horas <= 0)
        {
            escreva("Tempo inválido.")
        }
        senao
        {
            se (horas <= 2)
            {
                valor = horas * 2
            }
            senao
            {
                valor = (2 * 2) + ((horas - 2) * 1)
            }
            escreva("\nTempo: ", horas, " hora(s)")
            escreva("\nValor a pagar: R$ ", valor)
        }
    }
}
