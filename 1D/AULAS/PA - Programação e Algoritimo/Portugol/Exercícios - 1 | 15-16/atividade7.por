/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade7.por
* Data: 16/03/2026
* Autor: Calebe Barros Ramalho Da Silva
* Ler a base menor, a base maior e a altura. Calcular e mostrar a área de um trapézio:
* (Base menor + base menor) + altura / 2.
*/
programa
{
    funcao inicio()
    {
        real bsmaior, bsmenor, altura, area
        escreva("Digite a base maior: ")
        leia(bsmaior)
        escreva("Digite a base menor: ")
        leia(bsmenor)
        escreva("Digite a altura: ")
        leia(altura)
        area = (bsmaior + bsmenor) * altura / 2
        escreva("\nÁrea do trapézio: ", area)
    }
}
