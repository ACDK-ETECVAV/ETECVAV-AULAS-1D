/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: cavaloatividade1.por
* Data: 13/03/2026
* Autor: Calebe Barros Ramalho Da Silva
* Descrição: 
* O Haras Cavalos Brilhantes compra cavalos com frequência. Ler a quantidade de cavalos
* adquiridos recentemente, calcular a quantidade de ferraduras necessárias para os novos cavalos e exibir
* a quantidade de novos cavalos e sua respectiva quantidade de ferraduras.
*/
programa
{
	
	funcao inicio()
	{
	    inteiro qtd_cavalos, ferraduras
	    escreva("Calculo do número de Ferraduras\n\n\n")
	    escreva("Quantos Cavalos foram comprados? ")
	    leia(qtd_cavalos)
	    ferraduras = 4*qtd_cavalos
        escreva("\n\nA quantidade de cavalos adquiridas é : ",qtd_cavalos)
        escreva("São necessárias: ",ferraduras," ferraduras")

	}
}
