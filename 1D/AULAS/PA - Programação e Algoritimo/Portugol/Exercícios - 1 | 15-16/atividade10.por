/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade10.por
* Data: 20/03/2026
* Autor: Calebe Barros Ramalho Da Silva
* O caixa do supermercado recebe uma certa quantidade de moedas por dia.
* Ler a quantidade de moedas recebidas de acordo com cada um dos valores 1, 5, 10, 25 e 50 centavos, e ainda moedas de 1 real.
* Calcular e exibir o valor recebido de cada um dos tipos de moeda e a soma total em moedas.
*/
programa
{
	
	funcao inicio()
	{
		inteiro m1, m5, m10, m25, m50, m1real
		real total
		escreva("Quantas moedas de 1 centavo: ")
		leia(m1)
		escreva("Quantas moedas de 5 centavo: ")
		leia(m5)
		escreva("Quantas moedas de 10 centavo: ")
		leia(m10)
		escreva("Quantas moedas de 25 centavo: ")
		leia(m25)
		escreva("Quantas moedas de 50 centavo: ")
		leia(m50)
		escreva("Quantas moedas de 1 real: ")
		leia(m1real)
		
		total = (m1 * 0.01) + (m5 * 0.05) + (m10 * 0.10) + (m25 * 0.25) + (m50 * 0.50) + (m1real * 1)

		escreva("\nGanhou " + m1 + " moedas de 1 centavo. ")
		escreva("\nGanhou " + m5 + " moedas de 5 centavos")
		escreva("\nGanhou " + m10 + " moedas de 10 centavos")
		escreva("\nGanhou " + m50 + " moedas de 50 centavos")
		escreva("\nGanhou " + m1real + " moedas de 1 real centavos")
		escreva("\nTotal em Reais: ", total)
	}
}
