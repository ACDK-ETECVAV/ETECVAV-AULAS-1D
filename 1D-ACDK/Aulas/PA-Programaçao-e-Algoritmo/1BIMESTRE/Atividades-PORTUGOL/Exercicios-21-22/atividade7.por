/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: atividade10.por
* Data: 23/04/2026
* Autor: Anthony Muraro, Calebe Barros Ramalho da Silva, Daniel Teixeira Vitoriano e Kelven Chetz Man Gallippi
* Ler a idade do passageiro. Determinar o preço de uma passagem de 
* acordo com a idade do passageiro: até 2 anos (gratuita), de 3 a 12 anos 
* (meia tarifa) e acima de 12 anos (tarifa completa). Exibir o tipo de tarifa 
* que deve ser aplicada.
*/

programa
{
    funcao inicio()
    {
        inteiro idade;

        escreva("Digite a idade do passageiro: ");
        leia(idade);

        se (idade <= 2)
        {
            escreva("Passagem gratuita\n");
        }
        senao se (idade <= 12)
        {
            escreva("Meia tarifa\n");
        }
        senao
        {
            escreva("Tarifa completa\n");
        }
    }
}