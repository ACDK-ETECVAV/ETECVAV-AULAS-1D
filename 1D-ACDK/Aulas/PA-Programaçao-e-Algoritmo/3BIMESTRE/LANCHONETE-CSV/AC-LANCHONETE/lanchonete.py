import json
import os

ARQUIVO = "lanchonete_dados.json"

produtos = []
pedidos = []


def carregar_dados():
    global produtos, pedidos

    if os.path.exists(ARQUIVO):
        with open(ARQUIVO, "r", encoding="utf-8") as arquivo:
            dados = json.load(arquivo)

        produtos = dados.get("produtos", [])
        pedidos = dados.get("pedidos", [])
    else:
        produtos = []
        pedidos = []


def salvar_dados():
    dados = {
        "produtos": produtos,
        "pedidos": pedidos
    }

    with open(ARQUIVO, "w", encoding="utf-8") as arquivo:
        json.dump(dados, arquivo, indent=4, ensure_ascii=False)


def procurar_produto(codigo):
    for produto in produtos:
        if produto["codigo"] == codigo:
            return produto

    return None


def cadastrar_produto():
    print("\n--- Cadastrar produto ---")

    codigo = input("Código: ")

    if procurar_produto(codigo) != None:
        print("Já existe um produto com esse código.")
        return

    nome = input("Nome: ")
    preco = float(input("Preço: R$ "))
    estoque = int(input("Quantidade em estoque: "))

    produto = {
        "codigo": codigo,
        "nome": nome,
        "preco": preco,
        "estoque": estoque
    }

    produtos.append(produto)
    salvar_dados()

    print("Produto cadastrado com sucesso!")


def listar_produtos():
    print("\n--- Produtos ---")

    if len(produtos) == 0:
        print("Nenhum produto cadastrado.")
        return

    for produto in produtos:
        print("Código:", produto["codigo"])
        print("Nome:", produto["nome"])
        print(f"Preço: R$ {produto['preco']:.2f}")
        print("Estoque:", produto["estoque"])
        print("------------------------")


def fazer_pedido():
    print("\n--- Fazer pedido ---")

    if len(produtos) == 0:
        print("Nenhum produto cadastrado.")
        return

    nome_cliente = input("Nome do cliente: ")

    listar_produtos()

    codigo = input("Código do produto: ")

    produto = procurar_produto(codigo)

    if produto == None:
        print("Produto não encontrado.")
        return

    quantidade = int(input("Quantidade: "))

    if quantidade <= 0:
        print("Quantidade inválida.")
        return

    if quantidade > produto["estoque"]:
        print("Estoque insuficiente.")
        return

    total = quantidade * produto["preco"]

    produto["estoque"] = produto["estoque"] - quantidade

    pedido = {
        "cliente": nome_cliente,
        "codigo_produto": produto["codigo"],
        "nome_produto": produto["nome"],
        "quantidade": quantidade,
        "total": total
    }

    pedidos.append(pedido)

    salvar_dados()

    print("\nPedido realizado com sucesso!")
    print(f"Valor total: R$ {total:.2f}")


def listar_pedidos():
    print("\n--- Pedidos realizados ---")

    if len(pedidos) == 0:
        print("Nenhum pedido realizado.")
        return

    for pedido in pedidos:
        print("Cliente:", pedido["cliente"])
        print("Produto:", pedido["nome_produto"])
        print("Código:", pedido["codigo_produto"])
        print("Quantidade:", pedido["quantidade"])
        print(f"Valor total: R$ {pedido['total']:.2f}")
        print("------------------------")


# TURMA A - ALTERAR PREÇO
def alterar_preco():
    print("\n--- Alterar preço ---")

    codigo = input("Código do produto: ")
    produto = procurar_produto(codigo)

    if produto == None:
        print("Produto não encontrado.")
        return

    novo_preco = float(input("Novo preço: R$ "))

    produto["preco"] = novo_preco

    salvar_dados()

    print("Preço alterado com sucesso!")


# TURMA A - REMOVER PRODUTO
def remover_produto():
    print("\n--- Remover produto ---")

    codigo = input("Código do produto: ")
    produto = procurar_produto(codigo)

    if produto == None:
        print("Produto não encontrado.")
        return

    produtos.remove(produto)

    salvar_dados()

    print("Produto removido com sucesso!")


# TURMA A - PESQUISAR PRODUTO
def pesquisar_produto():
    print("\n--- Pesquisar produto ---")

    nome = input("Nome do produto: ").lower()

    encontrou = False

    for produto in produtos:
        if nome in produto["nome"].lower():
            print("Código:", produto["codigo"])
            print("Nome:", produto["nome"])
            print(f"Preço: R$ {produto['preco']:.2f}")
            print("Estoque:", produto["estoque"])
            print("------------------------")
            encontrou = True

    if encontrou == False:
        print("Produto não encontrado.")


# TURMA A - RELATÓRIO DE VENDAS
def relatorio_vendas():
    print("\n--- Relatório de vendas ---")

    if len(pedidos) == 0:
        print("Nenhuma venda realizada.")
        return

    total_vendas = 0
    quantidade_produtos = 0

    for pedido in pedidos:
        total_vendas = total_vendas + pedido["total"]
        quantidade_produtos = quantidade_produtos + pedido["quantidade"]

    print("Total de pedidos:", len(pedidos))
    print("Produtos vendidos:", quantidade_produtos)
    print(f"Total vendido: R$ {total_vendas:.2f}")


def menu():
    while True:
        print("\n===== LANCHONETE =====")
        print("1 - Cadastrar produto")
        print("2 - Listar produtos")
        print("3 - Fazer pedido")
        print("4 - Ver pedidos realizados")
        print("5 - Alterar preço")
        print("6 - Remover produto")
        print("7 - Pesquisar produto")
        print("8 - Relatório de vendas")
        print("9 - Sair")

        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            cadastrar_produto()

        elif opcao == "2":
            listar_produtos()

        elif opcao == "3":
            fazer_pedido()

        elif opcao == "4":
            listar_pedidos()

        elif opcao == "5":
            alterar_preco()

        elif opcao == "6":
            remover_produto()

        elif opcao == "7":
            pesquisar_produto()

        elif opcao == "8":
            relatorio_vendas()

        elif opcao == "9":
            salvar_dados()
            print("Sistema encerrado.")
            break

        else:
            print("Opção inválida.")


carregar_dados()
menu()  
