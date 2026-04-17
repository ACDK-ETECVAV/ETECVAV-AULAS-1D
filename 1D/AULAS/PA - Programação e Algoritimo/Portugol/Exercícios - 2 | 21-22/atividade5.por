/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade10.por
* Data: 11/04/2026
* Autor: Calebe Barros Ramalho Da Silva
* Ler o preço do etanol e da gasolina. Sugerir o tipo de combustível a ser utilizado em um carro,
* com base no preço: se o preço do etanol for até 70% do preço da gasolina, é recomendado usar álcool;
* caso contrário, usar gasolina. Exibir o resultado sugerido.
*/

programa
{
    funcao inicio()
    {
        real etanol, gasolina
        escreva("Comparador de Combustível\n\n")
        escreva("Digite o preço do etanol: R$ ")
        leia(etanol)
        escreva("Digite o preço da gasolina: R$ ")
        leia(gasolina)
        se (etanol <= 0 ou gasolina <= 0)
        {
            escreva("\nValores inválidos.")
        }
        senao
        {
            se (etanol <= gasolina * 0.7)
            {
                escreva("\nRecomendação: Abastecer com ETANOL.")
            }
            senao
            {
                escreva("\nRecomendação: Abastecer com GASOLINA.")
            }
            escreva("\n\nPreço do etanol: R$ ", etanol)
            escreva("\nPreço da gasolina: R$ ", gasolina)
        }
    }
}