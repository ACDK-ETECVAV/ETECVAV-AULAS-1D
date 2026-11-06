import json
import os
from datetime import datetime

ARQUIVO = "livraria_dados.json"

livros = []
compras = []
vendas = []


# -------------------- DADOS --------------------

def carregar_dados():
    global livros, compras, vendas

    if os.path.exists(ARQUIVO):
        try:
            with open(ARQUIVO, "r", encoding="utf-8") as arquivo:
                dados = json.load(arquivo)

            livros = dados.get("livros", [])
            compras = dados.get("compras", [])
            vendas = dados.get("vendas", [])
        except (json.JSONDecodeError, OSError):
            print("Não foi possível ler o arquivo de dados. Iniciando com dados vazios.")
            livros, compras, vendas = [], [], []


def salvar_dados():
    dados = {
        "livros": livros,
        "compras": compras,
        "vendas": vendas
    }

    with open(ARQUIVO, "w", encoding="utf-8") as arquivo:
        json.dump(dados, arquivo, indent=4, ensure_ascii=False)


def ler_inteiro(mensagem, minimo=0):
    while True:
        try:
            valor = int(input(mensagem))
            if valor < minimo:
                print(f"Digite um número igual ou maior que {minimo}.")
            else:
                return valor
        except ValueError:
            print("Digite um número inteiro válido.")


def ler_preco(mensagem, minimo=0.01):
    while True:
        try:
            texto = input(mensagem).strip().replace(",", ".")
            valor = float(texto)
            if valor < minimo:
                print(f"Digite um valor igual ou maior que {minimo:.2f}.")
            else:
                return valor
        except ValueError:
            print("Digite um preço válido. Exemplo: 39,90")


def procurar_livro(codigo):
    for livro in livros:
        if livro["codigo"] == codigo:
            return livro
    return None


# -------------------- LIVROS --------------------

def cadastrar_livro():
    print("\n--- CADASTRAR LIVRO ---")
    codigo = input("Código ou ISBN: ").strip()

    if not codigo:
        print("O código não pode ficar vazio.")
        return

    if procurar_livro(codigo):
        print("Já existe um livro com esse código.")
        return

    titulo = input("Título: ").strip()
    autor = input("Autor: ").strip()
    editora = input("Editora: ").strip()

    if not titulo or not autor:
        print("Título e autor são obrigatórios.")
        return

    preco_custo = ler_preco("Preço de custo (R$): ")
    preco_venda = ler_preco("Preço de venda (R$): ")
    estoque = ler_inteiro("Quantidade inicial em estoque: ")

    livro = {
        "codigo": codigo,
        "titulo": titulo,
        "autor": autor,
        "editora": editora,
        "preco_custo": preco_custo,
        "preco_venda": preco_venda,
        "estoque": estoque
    }

    livros.append(livro)
    salvar_dados()
    print("Livro cadastrado com sucesso!")


def listar_livros():
    print("\n--- LIVROS CADASTRADOS ---")

    if not livros:
        print("Nenhum livro cadastrado.")
        return

    for livro in livros:
        print(f"\nCódigo/ISBN: {livro['codigo']}")
        print(f"Título: {livro['titulo']}")
        print(f"Autor: {livro['autor']}")
        print(f"Editora: {livro['editora']}")
        print(f"Preço de custo: R$ {livro['preco_custo']:.2f}")
        print(f"Preço de venda: R$ {livro['preco_venda']:.2f}")
        print(f"Estoque: {livro['estoque']}")
        print("-" * 35)


def pesquisar_livro():
    print("\n--- PESQUISAR LIVRO ---")
    termo = input("Digite o título, autor ou código/ISBN: ").strip().lower()

    encontrou = False
    for livro in livros:
        if (termo in livro["titulo"].lower()
                or termo in livro["autor"].lower()
                or termo in livro["codigo"].lower()):
            mostrar_livro(livro)
            encontrou = True

    if not encontrou:
        print("Nenhum livro encontrado.")


def mostrar_livro(livro):
    print(f"\nCódigo/ISBN: {livro['codigo']}")
    print(f"Título: {livro['titulo']}")
    print(f"Autor: {livro['autor']}")
    print(f"Editora: {livro['editora']}")
    print(f"Preço de venda: R$ {livro['preco_venda']:.2f}")
    print(f"Estoque: {livro['estoque']}")


def alterar_livro():
    print("\n--- ALTERAR DADOS DO LIVRO ---")
    codigo = input("Código/ISBN do livro: ").strip()
    livro = procurar_livro(codigo)

    if not livro:
        print("Livro não encontrado.")
        return

    print("Deixe em branco o campo que não deseja alterar.")
    titulo = input(f"Novo título [{livro['titulo']}]: ").strip()
    autor = input(f"Novo autor [{livro['autor']}]: ").strip()
    editora = input(f"Nova editora [{livro['editora']}]: ").strip()

    if titulo:
        livro["titulo"] = titulo
    if autor:
        livro["autor"] = autor
    if editora:
        livro["editora"] = editora

    salvar_dados()
    print("Dados do livro atualizados!")


def alterar_preco():
    print("\n--- ALTERAR PREÇO DE VENDA ---")
    codigo = input("Código/ISBN: ").strip()
    livro = procurar_livro(codigo)

    if not livro:
        print("Livro não encontrado.")
        return

    livro["preco_venda"] = ler_preco("Novo preço de venda (R$): ")
    salvar_dados()
    print("Preço alterado com sucesso!")


def remover_livro():
    print("\n--- REMOVER LIVRO ---")
    codigo = input("Código/ISBN: ").strip()
    livro = procurar_livro(codigo)

    if not livro:
        print("Livro não encontrado.")
        return

    confirmar = input(f"Confirma a remoção de '{livro['titulo']}'? (s/n): ").strip().lower()
    if confirmar == "s":
        livros.remove(livro)
        salvar_dados()
        print("Livro removido.")
    else:
        print("Operação cancelada.")


# -------------------- COMPRAS / ENTRADA DE ESTOQUE --------------------

def registrar_compra():
    print("\n--- REGISTRAR COMPRA DE LIVROS ---")
    if not livros:
        print("Cadastre pelo menos um livro antes de registrar uma compra.")
        return

    listar_livros()
    codigo = input("\nCódigo/ISBN do livro comprado: ").strip()
    livro = procurar_livro(codigo)

    if not livro:
        print("Livro não encontrado.")
        return

    fornecedor = input("Nome do fornecedor: ").strip()
    if not fornecedor:
        print("Informe o fornecedor.")
        return

    quantidade = ler_inteiro("Quantidade comprada: ", minimo=1)
    custo_unitario = ler_preco("Custo por unidade (R$): ")

    total = quantidade * custo_unitario
    livro["estoque"] += quantidade
    livro["preco_custo"] = custo_unitario

    compra = {
        "data": datetime.now().strftime("%d/%m/%Y %H:%M"),
        "fornecedor": fornecedor,
        "codigo_livro": livro["codigo"],
        "titulo": livro["titulo"],
        "quantidade": quantidade,
        "custo_unitario": custo_unitario,
        "total": total
    }

    compras.append(compra)
    salvar_dados()

    print("\nCompra registrada com sucesso!")
    print(f"Fornecedor: {fornecedor}")
    print(f"Quantidade recebida: {quantidade}")
    print(f"Total da compra: R$ {total:.2f}")
    print(f"Estoque atual: {livro['estoque']}")


def listar_compras():
    print("\n--- HISTÓRICO DE COMPRAS ---")
    if not compras:
        print("Nenhuma compra registrada.")
        return

    for compra in compras:
        print(f"\nData: {compra['data']}")
        print(f"Fornecedor: {compra['fornecedor']}")
        print(f"Livro: {compra['titulo']} ({compra['codigo_livro']})")
        print(f"Quantidade: {compra['quantidade']}")
        print(f"Custo unitário: R$ {compra['custo_unitario']:.2f}")
        print(f"Total: R$ {compra['total']:.2f}")
        print("-" * 35)


# -------------------- VENDAS / SAÍDA DE ESTOQUE --------------------

def registrar_venda():
    print("\n--- REGISTRAR VENDA ---")
    if not livros:
        print("Nenhum livro cadastrado.")
        return

    listar_livros()
    codigo = input("\nCódigo/ISBN do livro vendido: ").strip()
    livro = procurar_livro(codigo)

    if not livro:
        print("Livro não encontrado.")
        return

    cliente = input("Nome do cliente: ").strip()
    if not cliente:
        cliente = "Cliente não identificado"

    quantidade = ler_inteiro("Quantidade vendida: ", minimo=1)

    if quantidade > livro["estoque"]:
        print(f"Estoque insuficiente. Disponível: {livro['estoque']}")
        return

    total = quantidade * livro["preco_venda"]
    livro["estoque"] -= quantidade

    venda = {
        "data": datetime.now().strftime("%d/%m/%Y %H:%M"),
        "cliente": cliente,
        "codigo_livro": livro["codigo"],
        "titulo": livro["titulo"],
        "quantidade": quantidade,
        "preco_unitario": livro["preco_venda"],
        "total": total
    }

    vendas.append(venda)
    salvar_dados()

    print("\nVenda realizada com sucesso!")
    print(f"Cliente: {cliente}")
    print(f"Livro: {livro['titulo']}")
    print(f"Quantidade: {quantidade}")
    print(f"Valor total: R$ {total:.2f}")
    print(f"Estoque restante: {livro['estoque']}")


def listar_vendas():
    print("\n--- HISTÓRICO DE VENDAS ---")
    if not vendas:
        print("Nenhuma venda registrada.")
        return

    for venda in vendas:
        print(f"\nData: {venda['data']}")
        print(f"Cliente: {venda['cliente']}")
        print(f"Livro: {venda['titulo']} ({venda['codigo_livro']})")
        print(f"Quantidade: {venda['quantidade']}")
        print(f"Preço unitário: R$ {venda['preco_unitario']:.2f}")
        print(f"Total: R$ {venda['total']:.2f}")
        print("-" * 35)


# -------------------- RELATÓRIOS --------------------

def relatorio_estoque():
    print("\n--- RELATÓRIO DE ESTOQUE ---")
    if not livros:
        print("Nenhum livro cadastrado.")
        return

    total_unidades = sum(livro["estoque"] for livro in livros)
    valor_estoque = sum(livro["estoque"] * livro["preco_custo"] for livro in livros)

    print(f"Tipos de livros cadastrados: {len(livros)}")
    print(f"Total de unidades em estoque: {total_unidades}")
    print(f"Valor estimado do estoque (pelo custo): R$ {valor_estoque:.2f}")

    print("\nLivros com estoque baixo (5 unidades ou menos):")
    encontrou = False
    for livro in livros:
        if livro["estoque"] <= 5:
            print(f"- {livro['titulo']}: {livro['estoque']} unidade(s)")
            encontrou = True

    if not encontrou:
        print("Nenhum livro com estoque baixo.")


def relatorio_financeiro():
    print("\n--- RELATÓRIO FINANCEIRO ---")
    total_compras = sum(compra["total"] for compra in compras)
    total_vendas = sum(venda["total"] for venda in vendas)
    unidades_compradas = sum(compra["quantidade"] for compra in compras)
    unidades_vendidas = sum(venda["quantidade"] for venda in vendas)

    print(f"Quantidade de compras registradas: {len(compras)}")
    print(f"Livros comprados: {unidades_compradas}")
    print(f"Total gasto em compras: R$ {total_compras:.2f}")
    print(f"Quantidade de vendas registradas: {len(vendas)}")
    print(f"Livros vendidos: {unidades_vendidas}")
    print(f"Total recebido em vendas: R$ {total_vendas:.2f}")
    print(f"Diferença entre vendas e compras: R$ {total_vendas - total_compras:.2f}")
    print("\nObservação: essa diferença não representa o lucro líquido, pois não considera")
    print("despesas como aluguel, salários, impostos e outros custos da livraria.")


# -------------------- MENU PRINCIPAL --------------------

def menu():
    while True:
        print("\n========== SISTEMA DE LIVRARIA ==========")
        print("1 - Cadastrar livro")
        print("2 - Listar livros")
        print("3 - Pesquisar livro")
        print("4 - Alterar dados de um livro")
        print("5 - Alterar preço de venda")
        print("6 - Remover livro")
        print("7 - Registrar compra (entrada no estoque)")
        print("8 - Ver histórico de compras")
        print("9 - Registrar venda")
        print("10 - Ver histórico de vendas")
        print("11 - Relatório de estoque")
        print("12 - Relatório financeiro")
        print("0 - Sair")

        opcao = input("Escolha uma opção: ").strip()

        if opcao == "1":
            cadastrar_livro()
        elif opcao == "2":
            listar_livros()
        elif opcao == "3":
            pesquisar_livro()
        elif opcao == "4":
            alterar_livro()
        elif opcao == "5":
            alterar_preco()
        elif opcao == "6":
            remover_livro()
        elif opcao == "7":
            registrar_compra()
        elif opcao == "8":
            listar_compras()
        elif opcao == "9":
            registrar_venda()
        elif opcao == "10":
            listar_vendas()
        elif opcao == "11":
            relatorio_estoque()
        elif opcao == "12":
            relatorio_financeiro()
        elif opcao == "0":
            salvar_dados()
            print("Dados salvos. Sistema encerrado.")
            break
        else:
            print("Opção inválida. Tente novamente.")


if __name__ == "__main__":
    carregar_dados()
    menu()
