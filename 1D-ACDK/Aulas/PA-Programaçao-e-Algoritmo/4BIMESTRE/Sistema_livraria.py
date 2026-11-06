import json
import os

ARQUIVO = "livraria_dados.json"

livros = []
compras = []
vendas = []


def carregar_dados():
    global livros, compras, vendas

    if os.path.exists(ARQUIVO):
        with open(ARQUIVO, "r", encoding="utf-8") as arquivo:
            dados = json.load(arquivo)
        livros = dados.get("livros", [])
        compras = dados.get("compras", [])
        vendas = dados.get("vendas", [])


def salvar_dados():
    dados = {"livros": livros, "compras": compras, "vendas": vendas}
    with open(ARQUIVO, "w", encoding="utf-8") as arquivo:
        json.dump(dados, arquivo, indent=4, ensure_ascii=False)


def procurar_livro(codigo):
    for livro in livros:
        if livro["codigo"] == codigo:
            return livro
    return None


def cadastrar_livro():
    print("\n--- Cadastrar livro ---")
    codigo = input("Código: ")

    if procurar_livro(codigo) != None:
        print("Esse código já está cadastrado.")
        return

    nome = input("Nome: ")
    autor = input("Autor: ")
    preco = float(input("Preço: R$ "))
    estoque = int(input("Quantidade em estoque: "))

    livro = {"codigo": codigo, "nome": nome, "autor": autor,
             "preco": preco, "estoque": estoque}
    livros.append(livro)
    salvar_dados()
    print("Livro cadastrado com sucesso!")


def listar_livros():
    print("\n--- Livros no estoque ---")

    if len(livros) == 0:
        print("Nenhum livro cadastrado.")
        return

    for livro in livros:
        print("------------------------")
        print("Código:", livro["codigo"])
        print("Nome:", livro["nome"])
        print("Autor:", livro["autor"])
        print(f"Preço: R$ {livro['preco']:.2f}")
        print("Estoque:", livro["estoque"])


def comprar_livro():
    print("\n--- Comprar livros ---")
    codigo = input("Código do livro: ")
    livro = procurar_livro(codigo)

    if livro == None:
        print("Livro não encontrado.")
        return

    quantidade = int(input("Quantidade comprada: "))
    if quantidade <= 0:
        print("Quantidade inválida.")
        return

    livro["estoque"] += quantidade
    compras.append({"nome": livro["nome"], "quantidade": quantidade})
    salvar_dados()
    print("Compra registrada! Estoque:", livro["estoque"])


def vender_livro():
    print("\n--- Vender livro ---")
    codigo = input("Código do livro: ")
    livro = procurar_livro(codigo)

    if livro == None:
        print("Livro não encontrado.")
        return

    quantidade = int(input("Quantidade vendida: "))
    if quantidade <= 0:
        print("Quantidade inválida.")
        return
    if quantidade > livro["estoque"]:
        print("Estoque insuficiente.")
        return

    total = quantidade * livro["preco"]
    livro["estoque"] -= quantidade
    vendas.append({"nome": livro["nome"], "quantidade": quantidade,
                   "total": total})
    salvar_dados()
    print("Venda realizada com sucesso!")
    print(f"Total: R$ {total:.2f}")


def remover_livro():
    print("\n--- Remover livro ---")
    codigo = input("Código do livro: ")
    livro = procurar_livro(codigo)

    if livro == None:
        print("Livro não encontrado.")
        return

    livros.remove(livro)
    salvar_dados()
    print("Livro removido com sucesso!")


def pesquisar_livro():
    print("\n--- Pesquisar livro ---")
    nome = input("Nome do livro: ").lower()
    encontrou = False

    for livro in livros:
        if nome in livro["nome"].lower():
            print("Código:", livro["codigo"])
            print("Nome:", livro["nome"])
            print("Autor:", livro["autor"])
            print(f"Preço: R$ {livro['preco']:.2f}")
            print("Estoque:", livro["estoque"])
            encontrou = True

    if encontrou == False:
        print("Livro não encontrado.")


def relatorio_vendas():
    print("\n--- Relatório de vendas ---")

    if len(vendas) == 0:
        print("Nenhuma venda realizada.")
        return

    total_vendas = 0
    quantidade_livros = 0

    for venda in vendas:
        total_vendas += venda["total"]
        quantidade_livros += venda["quantidade"]

    print("Livros vendidos:", quantidade_livros)
    print(f"Total vendido: R$ {total_vendas:.2f}")


def menu():
    while True:
        print("\n===== LIVRARIA =====")
        print("1 - Cadastrar livro")
        print("2 - Ver livros no estoque")
        print("3 - Comprar livros")
        print("4 - Vender livros")
        print("5 - Remover livro")
        print("6 - Pesquisar livro")
        print("7 - Relatório de vendas")
        print("8 - Sair")

        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            cadastrar_livro()
        elif opcao == "2":
            listar_livros()
        elif opcao == "3":
            comprar_livro()
        elif opcao == "4":
            vender_livro()
        elif opcao == "5":
            remover_livro()
        elif opcao == "6":
            pesquisar_livro()
        elif opcao == "7":
            relatorio_vendas()
        elif opcao == "8":
            salvar_dados()
            print("Sistema encerrado.")
            break
        else:
            print("Opção inválida.")


carregar_dados()
menu()

