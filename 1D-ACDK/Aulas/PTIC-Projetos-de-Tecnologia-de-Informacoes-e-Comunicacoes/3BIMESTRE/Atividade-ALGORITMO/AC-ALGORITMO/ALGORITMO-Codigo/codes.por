programa
{
    funcao inicio()
    {
        cadeia nome
        cadeia resposta
        cadeia dificuldade

        inteiro opcao
        inteiro pontuacao = 0
        inteiro acertos = 0
        inteiro erros = 0
        inteiro sorteado
        inteiro i

        inteiro usadasNormal[5] = {0, 0, 0, 0, 0}
        inteiro usadasDificil[5] = {0, 0, 0, 0, 0}
        inteiro usadasNerd[5] = {0, 0, 0, 0, 0}


        cadeia perguntasNormal[5] = {
            "Qual e a capital do Brasil?",
            "Quanto e 5 + 5?",
            "Qual planeta e conhecido como Planeta Vermelho?",
            "Quantos dias existem em uma semana?",
            "Qual animal e conhecido como rei da selva?"
        }

        cadeia alternativasNormal[5][4] = {
            {"A) Sao Paulo", "B) Brasilia", "C) Rio de Janeiro", "D) Salvador"},
            {"A) 8", "B) 9", "C) 10", "D) 15"},
            {"A) Venus", "B) Jupiter", "C) Marte", "D) Saturno"},
            {"A) 5", "B) 6", "C) 7", "D) 8"},
            {"A) Tigre", "B) Leao", "C) Elefante", "D) Urso"}
        }

        cadeia respostasNormal[5] = {
            "B",
            "C",
            "C",
            "C",
            "B"
        }

        cadeia perguntasDificil[5] = {
            "Qual e o maior planeta do Sistema Solar?",
            "Quem escreveu Dom Casmurro?",
            "Qual e o simbolo quimico do ouro?",
            "Em que ano terminou a Segunda Guerra Mundial?",
            "Qual e a raiz quadrada de 144?"
        }

        cadeia alternativasDificil[5][4] = {
            {"A) Terra", "B) Jupiter", "C) Saturno", "D) Netuno"},
            {"A) Machado de Assis", "B) Jose de Alencar", "C) Carlos Drummond", "D) Monteiro Lobato"},
            {"A) Ag", "B) Fe", "C) Au", "D) O"},
            {"A) 1939", "B) 1942", "C) 1945", "D) 1950"},
            {"A) 10", "B) 11", "C) 12", "D) 14"}
        }

        cadeia respostasDificil[5] = {
            "B",
            "A",
            "C",
            "C",
            "C"
        }
        
        cadeia perguntasNerd[5] = {
            "Qual linguagem e utilizada principalmente no desenvolvimento do kernel do Linux?",
            "O que significa a sigla CPU?",
            "Qual estrutura de dados utiliza o conceito FIFO?",
            "Qual protocolo e utilizado para acessar paginas web com conexao segura?",
            "Qual sistema numerico e utilizado pelo computador para representar dados?"
        }

        cadeia alternativasNerd[5][4] = {
            {"A) Python", "B) Java", "C) C", "D) HTML"},
            {"A) Central Processing Unit", "B) Computer Personal Unit", "C) Central Program Utility", "D) Control Processing User"},
            {"A) Pilha", "B) Fila", "C) Arvore", "D) Grafo"},
            {"A) FTP", "B) HTTP", "C) HTTPS", "D) SMTP"},
            {"A) Decimal", "B) Binario", "C) Hexadecimal", "D) Octal"}
        }

        cadeia respostasNerd[5] = {
            "C",
            "A",
            "B",
            "C",
            "B"
        }

        escreva("========================================\n")
        escreva("              JOGO DO MILHÃO\n")
        escreva("	Patrocinador: Guri Studios\n")
        escreva("========================================\n\n")

        escreva("Digite o nome do jogador: ")
        leia(nome)

        escreva("\nOla, ", nome, "!\n")

        escreva("\nEscolha o nivel de dificuldade:\n\n")
        escreva("1 - NORMAL\n")
        escreva("2 - DIFICIL\n")
        escreva("3 - NERD\n\n")

        escreva("Digite sua escolha: ")
        leia(opcao)

        enquanto (opcao < 1 ou opcao > 3)
        {
            escreva("\nOpcao invalida!\n")
            escreva("Digite 1, 2 ou 3: ")
            leia(opcao)
        }


        se (opcao == 1)
        {
            dificuldade = "NORMAL"
        }
        senao se (opcao == 2)
        {
            dificuldade = "DIFICIL"
        }
        senao
        {
            dificuldade = "NERD"
        }


        escreva("\n========================================\n")
        escreva("       DIFICULDADE: ", dificuldade, "\n")
        escreva("========================================\n")

        escreva("\nSerão feitas 5 perguntas.\n")
        escreva("Digite A, B, C ou D para responder.\n")
        escreva("Digite GABS para acertar automaticamente.\n")

        para (i = 0; i < 5; i++)
        {

            se (opcao == 1)
            {
                faca
                {
                    sorteado = sorteia(0, 4)
                }
                enquanto (usadasNormal[sorteado] == 1)

                usadasNormal[sorteado] = 1


                escreva("\n\n----------------------------------------\n")
                escreva("PERGUNTA ", i + 1, " DE 5\n")
                escreva("----------------------------------------\n")

                escreva(perguntasNormal[sorteado], "\n\n")

                escreva(alternativasNormal[sorteado][0], "\n")
                escreva(alternativasNormal[sorteado][1], "\n")
                escreva(alternativasNormal[sorteado][2], "\n")
                escreva(alternativasNormal[sorteado][3], "\n\n")

                escreva("Sua resposta: ")
                leia(resposta)


                enquanto (
                    resposta != "A" e
                    resposta != "B" e
                    resposta != "C" e
                    resposta != "D" e
                    resposta != "GABS" e
                    resposta != "gabs"
                )
                {
                    escreva("Resposta invalida!\n")
                    escreva("Digite A, B, C, D ou GABS: ")
                    leia(resposta)
                }


                se (resposta == "GABS" ou resposta == "gabs")
                {
                    escreva("\nGABS ACTIVATED! +1 ponto!\n")

                    pontuacao = pontuacao + 1
                    acertos = acertos + 1
                }
                senao se (resposta == respostasNormal[sorteado])
                {
                    escreva("\nCORRETO! +1 ponto!\n")

                    pontuacao = pontuacao + 1
                    acertos = acertos + 1
                }
                senao
                {
                    escreva("\nERRADO!\n")
                    escreva("A resposta correta era: ",
                            respostasNormal[sorteado], "\n")

                    erros = erros + 1
                }
            }

            senao se (opcao == 2)
            {
                faca
                {
                    sorteado = sorteia(0, 4)
                }
                enquanto (usadasDificil[sorteado] == 1)

                usadasDificil[sorteado] = 1


                escreva("\n\n----------------------------------------\n")
                escreva("PERGUNTA ", i + 1, " DE 5\n")
                escreva("----------------------------------------\n")

                escreva(perguntasDificil[sorteado], "\n\n")

                escreva(alternativasDificil[sorteado][0], "\n")
                escreva(alternativasDificil[sorteado][1], "\n")
                escreva(alternativasDificil[sorteado][2], "\n")
                escreva(alternativasDificil[sorteado][3], "\n\n")

                escreva("Sua resposta: ")
                leia(resposta)


                enquanto (
                    resposta != "A" e
                    resposta != "B" e
                    resposta != "C" e
                    resposta != "D" e
                    resposta != "GABS" e
                    resposta != "gabs"
                )
                {
                    escreva("Resposta invalida!\n")
                    escreva("Digite A, B, C, D ou GABS: ")
                    leia(resposta)
                }


                se (resposta == "GABS" ou resposta == "gabs")
                {
                    escreva("\nGABS ACTIVATED! +1 ponto!\n")

                    pontuacao = pontuacao + 1
                    acertos = acertos + 1
                }
                senao se (resposta == respostasDificil[sorteado])
                {
                    escreva("\nCORRETO! +1 ponto!\n")

                    pontuacao = pontuacao + 1
                    acertos = acertos + 1
                }
                senao
                {
                    escreva("\nERRADO!\n")
                    escreva("A resposta correta era: ",
                            respostasDificil[sorteado], "\n")

                    erros = erros + 1
                }
            }

            senao
            {
                faca
                {
                    sorteado = sorteia(0, 4)
                }
                enquanto (usadasNerd[sorteado] == 1)

                usadasNerd[sorteado] = 1


                escreva("\n\n----------------------------------------\n")
                escreva("PERGUNTA ", i + 1, " DE 5\n")
                escreva("----------------------------------------\n")

                escreva(perguntasNerd[sorteado], "\n\n")

                escreva(alternativasNerd[sorteado][0], "\n")
                escreva(alternativasNerd[sorteado][1], "\n")
                escreva(alternativasNerd[sorteado][2], "\n")
                escreva(alternativasNerd[sorteado][3], "\n\n")

                escreva("Sua resposta: ")
                leia(resposta)


                enquanto (
                    resposta != "A" e
                    resposta != "B" e
                    resposta != "C" e
                    resposta != "D" e
                    resposta != "GABS" e
                    resposta != "gabs"
                )
                {
                    escreva("Resposta invalida!\n")
                    escreva("Digite A, B, C, D ou GABS: ")
                    leia(resposta)
                }


                se (resposta == "GABS" ou resposta == "gabs")
                {
                    escreva("\nGABS ACTIVATED! +1 ponto!\n")

                    pontuacao = pontuacao + 1
                    acertos = acertos + 1
                }
                senao se (resposta == respostasNerd[sorteado])
                {
                    escreva("\nCORRETO! +1 ponto!\n")

                    pontuacao = pontuacao + 1
                    acertos = acertos + 1
                }
                senao
                {
                    escreva("\nERRADO!\n")
                    escreva("A resposta correta era: ",
                            respostasNerd[sorteado], "\n")

                    erros = erros + 1
                }
            }
        }

        escreva("\n\n========================================\n")
        escreva("             RESULTADO FINAL\n")
        escreva("========================================\n")

        escreva("Jogador: ", nome, "\n")
        escreva("Dificuldade: ", dificuldade, "\n")
        escreva("Acertos: ", acertos, "\n")
        escreva("Erros: ", erros, "\n")
        escreva("Pontuacao: ", pontuacao, " / 5\n")


        se (pontuacao == 5)
        {
            escreva("\nPERFEITO! 5/5!\n")
            escreva("Voce acertou todas as perguntas!\n")
        }
        senao se (pontuacao == 4)
        {
            escreva("\nEXCELENTE! 4/5!\n")
            escreva("Voce foi muito bem!\n")
        }
        senao se (pontuacao == 3)
        {
            escreva("\nBOM! 3/5!\n")
            escreva("Voce acertou mais da metade!\n")
        }
        senao se (pontuacao >= 1)
        {
            escreva("\nVoce pode melhorar!\n")
            escreva("Continue estudando e tente novamente!\n")
        }
        senao
        {
            escreva("\n0/5!\n")
            escreva("Nao desista! Tente novamente!\n")
        }


        escreva("\n========================================\n")
        escreva("              FIM DO QUIZ\n")
        escreva("========================================\n")
    }
}
