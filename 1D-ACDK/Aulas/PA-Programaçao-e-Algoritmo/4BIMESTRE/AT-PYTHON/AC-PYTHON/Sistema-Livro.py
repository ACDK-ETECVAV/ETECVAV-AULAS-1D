'''
# ==============================================
# DECLARAÇÃO DE USO DE INTELIGÊNCIA ARTIFICIAL
# ==============================================
#
# Ferramenta: ChatGPT
# Etapa: Planejamento e desenvolvimento.
# Finalidade: Auxílio na organização do código,
# correção de erros e desenvolvimento das funções
# de comprar, vender, inserir, remover e visualizar
# livros no estoque.
# Validação: O código foi analisado pelos integrantes
# e suas funcionalidades foram executadas e testadas.
#
# ==============================================
'''

import json
import os

ARQUIVO = "livraria_dados.json"

livros = []


def carregar_dados():
    global livros

    if os.path.exists(ARQUIVO):
        with open(ARQUIVO, "r", encoding="utf-8") as arquivo:
            livros = json.load(arquivo)


def salvar_dados():
    with open(ARQUIVO, "w", encoding="utf-8") as arquivo:
        json.dump(livros, arquivo, indent=4, ensure_ascii=False)


def procurar_livro(codigo):
    for livro in livros:
        if livro["codigo"] == codigo:
            return livro
    return None

def inserir_livro():
    print("\n--- INSERIR LIVRO ---")

    codigo = input("Código do livro: ")

    if procurar_livro(codigo) is not None:
        print("Esse livro já está cadastrado.")
        return

    nome = input("Nome do livro: ")
    autor = input("Autor: ")

    try:
        preco = float(input("Preço: R$ "))
        quantidade = int(input("Quantidade: "))

        if preco < 0 or quantidade < 0:
            print("Preço e quantidade não podem ser negativos.")
            return

    except ValueError:
        print("Digite valores válidos.")
        return

    livro = {
        "codigo": codigo,
        "nome": nome,
        "autor": autor,
        "preco": preco,
        "estoque": quantidade
    }

    livros.append(livro)
    salvar_dados()

    print("Livro inserido com sucesso!")

def ver_estoque():
    print("\n--- LIVROS NO ESTOQUE ---")

    if len(livros) == 0:
        print("Nenhum livro cadastrado.")
        return

    for livro in livros:
        print("-------------------------")
        print("Código:", livro["codigo"])
        print("Nome:", livro["nome"])
        print("Autor:", livro["autor"])
        print(f"Preço: R$ {livro['preco']:.2f}")
        print("Quantidade:", livro["estoque"])

def comprar_livro():
    print("\n--- COMPRAR LIVRO ---")

    codigo = input("Código do livro: ")
    livro = procurar_livro(codigo)

    if livro is None:
        print("Livro não encontrado.")
        return

    try:
        quantidade = int(input("Quantidade comprada: "))

        if quantidade <= 0:
            print("Quantidade inválida.")
            return

    except ValueError:
        print("Digite uma quantidade válida.")
        return

    livro["estoque"] += quantidade

    salvar_dados()

    print("Compra realizada com sucesso!")
    print("Estoque atual:", livro["estoque"])

def vender_livro():
    print("\n--- VENDER LIVRO ---")

    codigo = input("Código do livro: ")
    livro = procurar_livro(codigo)

    if livro is None:
        print("Livro não encontrado.")
        return

    try:
        quantidade = int(input("Quantidade vendida: "))

        if quantidade <= 0:
            print("Quantidade inválida.")
            return

    except ValueError:
        print("Digite uma quantidade válida.")
        return

    if quantidade > livro["estoque"]:
        print("Não há livros suficientes no estoque.")
        return

    total = quantidade * livro["preco"]

    livro["estoque"] -= quantidade

    salvar_dados()

    print("Venda realizada com sucesso!")
    print(f"Total: R$ {total:.2f}")
    print("Estoque atual:", livro["estoque"])

def remover_livro():
    print("\n--- REMOVER LIVRO ---")

    codigo = input("Código do livro: ")
    livro = procurar_livro(codigo)

    if livro is None:
        print("Livro não encontrado.")
        return

    livros.remove(livro)

    salvar_dados()

    print("Livro removido com sucesso!")

def menu():
    while True:
        print("\n========== LIVRARIA ==========")
        print("1 - Comprar livro")
        print("2 - Vender livro")
        print("3 - Inserir livro")
        print("4 - Remover livro")
        print("5 - Ver livros no estoque")
        print("6 - Sair")
        print("==============================")

        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            comprar_livro()

        elif opcao == "2":
            vender_livro()

        elif opcao == "3":
            inserir_livro()

        elif opcao == "4":
            remover_livro()

        elif opcao == "5":
            ver_estoque()

        elif opcao == "6":
            salvar_dados()
            print("Sistema encerrado. Obrigado!")
            break

        else:
            print("Opção inválida!")


carregar_dados()
menu()
