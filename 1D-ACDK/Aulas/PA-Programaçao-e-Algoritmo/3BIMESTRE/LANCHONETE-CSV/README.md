# 🍔 Sistema para Lanchonete

> Sistema desenvolvido em **Python** para gerenciamento de produtos, estoque e pedidos utilizando **arquivo local JSON**, sem a utilização de banco de dados.

---

## 📌 Sobre o Projeto

O **Sistema para Lanchonete** foi desenvolvido para simular o funcionamento básico de uma pequena lanchonete.

O sistema permite:

- 📦 Cadastrar produtos
- 📋 Listar produtos
- 🛒 Registrar pedidos
- 📑 Consultar pedidos realizados
- 💾 Armazenar os dados localmente
- 📊 Controlar o estoque

Os dados são persistidos em um arquivo **JSON**, permitindo que as informações continuem disponíveis mesmo após o encerramento do programa.

---

## 🎯 Situação-Problema

Uma pequena lanchonete precisa de um sistema simples para:

- Registrar seus produtos;
- Controlar o estoque;
- Registrar pedidos dos clientes;
- Consultar informações posteriormente.

O sistema deve funcionar diretamente pelo **terminal** e armazenar os dados em um arquivo local, sem a necessidade de um banco de dados.

---

## 🧑‍💻 Objetivo

Desenvolver um programa em **Python** capaz de simular o gerenciamento básico de uma lanchonete, utilizando estruturas de programação e persistência de dados em arquivos.

O projeto também tem como objetivo colocar em prática conceitos como:

- Variáveis
- Listas
- Dicionários
- Funções
- Estruturas condicionais
- Laços de repetição
- Manipulação de arquivos
- JSON
- Importação de módulos
- Validação de dados

---

# 📋 Funcionalidades

## Versão Inicial — `v1.0`

A primeira versão do sistema possui o seguinte menu:

```text
1 - Cadastrar produto
2 - Listar produtos
3 - Fazer pedido
4 - Ver pedidos realizados
5 - Sair
```

### 📦 Produtos

Cada produto possui:

```text
Código
Nome
Preço
Quantidade em estoque
```

### 🛒 Pedidos

Cada pedido registra:

```text
Nome do cliente
Código do produto
Nome do produto
Quantidade comprada
Valor total
```

---

## ⚙️ Regras do Sistema

O programa deve:

- 📂 Carregar os dados ao iniciar;
- 📄 Criar o arquivo caso ele ainda não exista;
- 💾 Salvar os dados após o cadastro de um produto;
- 💾 Salvar os dados após a realização de um pedido;
- 🚫 Não permitir produtos com códigos repetidos;
- 🚫 Não permitir pedidos de produtos inexistentes;
- 🚫 Não permitir vendas com estoque insuficiente;
- 📉 Atualizar o estoque após cada pedido;
- 🔎 Permitir consultar produtos e pedidos já armazenados;
- 🧩 Utilizar funções para organizar o código.

---

# 🚀 Melhorias da Atividade

Após testar a versão inicial do **Sistema Lanchonete**, novas funcionalidades serão implementadas pelas duas turmas.

## 🟦 Turma A

A Turma A ficará responsável por implementar:

| Funcionalidade | Descrição |
|:---:|---|
| 💰 Alterar preço | Permitir alterar o preço de um produto cadastrado. |
| 🗑️ Remover produto | Permitir remover produtos do sistema. |
| 🔎 Pesquisar produto | Pesquisar produtos pelo nome. |
| 📊 Relatório de vendas | Gerar um relatório com as vendas realizadas. |

### Status

| Funcionalidade | Status |
|:---|:---:|
| 💰 Alterar preço | 🟡 Pendente |
| 🗑️ Remover produto | 🟡 Pendente |
| 🔎 Pesquisar produto | 🟡 Pendente |
| 📊 Relatório de vendas | 🟡 Pendente |

---

## 🟨 Turma B

A Turma B ficará responsável por implementar:

| Funcionalidade | Descrição |
|:---:|---|
| 🏆 Produto mais vendido | Identificar o produto com maior quantidade de vendas. |
| 💰 Total vendido no dia | Calcular o valor total das vendas realizadas. |
| 📊 Exportar relatório | Exportar os dados do relatório para um arquivo CSV. |
| 💾 Backup do JSON | Criar uma cópia de segurança do arquivo de dados. |

### Status

| Funcionalidade | Status |
|:---|:---:|
| 🏆 Produto mais vendido | 🟡 Pendente |
| 💰 Total vendido no dia | 🟡 Pendente |
| 📊 Exportar relatório para CSV | 🟡 Pendente |
| 💾 Criar backup do JSON | 🟡 Pendente |

---

# 💾 Armazenamento de Dados

O sistema utiliza um arquivo local chamado:

```text
lanchonete_dados.json
```

Esse arquivo armazena:

```text
Produtos cadastrados
Pedidos realizados
```

### Exemplo

```json
{
    "products": [
        {
            "code": "1",
            "name": "X-Salada",
            "price": 18.50,
            "stock": 10
        }
    ],
    "orders": [
        {
            "customer_name": "Ana",
            "product_code": "1",
            "product_name": "X-Salada",
            "quantity": 2,
            "total": 37.00
        }
    ]
}
```

---

# 📚 O que é JSON?

**JSON** (*JavaScript Object Notation*) é um formato utilizado para armazenar e trocar informações de maneira organizada.

Apesar de ter sido criado com base no JavaScript, o JSON é utilizado por diversas linguagens, incluindo **Python, Java, C#, PHP**, entre outras.

No Python, o módulo `json` permite transformar listas e dicionários em dados JSON e também carregar informações armazenadas em arquivos JSON.

---

## 🧱 Estrutura do JSON

Um objeto JSON utiliza pares de **chave e valor**:

```json
{
    "nome": "João",
    "idade": 17,
    "curso": "Informática"
}
```

Neste exemplo:

- `"nome"` → chave com valor `"João"`
- `"idade"` → chave com valor `17`
- `"curso"` → chave com valor `"Informática"`

Também é possível armazenar listas:

```json
{
    "produtos": [
        {
            "codigo": "001",
            "nome": "X-Burguer",
            "preco": 18.50,
            "estoque": 12
        }
    ]
}
```

---

# 🐍 Python + JSON

### 💾 Gravando dados

```python
import json

produto = {
    "codigo": "001",
    "nome": "X-Burguer",
    "preco": 18.50,
    "estoque": 12
}

with open("produto.json", "w", encoding="utf-8") as arquivo:
    json.dump(produto, arquivo, indent=4, ensure_ascii=False)
```

### 📖 Lendo dados

```python
import json

with open("produto.json", "r", encoding="utf-8") as arquivo:
    produto = json.load(arquivo)

print(produto["nome"])
print(produto["preco"])
```

Resultado:

```text
X-Burguer
18.5
```

---

# 🧠 Conceitos de Python Utilizados

| Conceito | Utilização |
|:---|:---|
| 📦 Variáveis | Armazenamento de informações |
| 📋 Listas | Organização de produtos e pedidos |
| 🗂️ Dicionários | Representação dos dados |
| 🧩 Funções | Organização do código |
| 🔀 Condicionais | Tomada de decisões |
| 🔁 Laços | Repetição do menu e processamento dos dados |
| 📁 Arquivos | Persistência dos dados |
| 🧾 JSON | Armazenamento estruturado |
| 📦 Módulos | Utilização de funcionalidades externas |
| ✅ Validação | Controle de entradas inválidas |

---

# 📁 Estrutura do Projeto

```text
📁 Sistema-Lanchonete
│
├── 📄 lanchonete.py
├── 📄 lanchonete_dados.json
├── 📄 README.md
│
└── 📁 versões
    └── 📄 v1.0
```

---

# 🏷️ Versões

| Versão | Descrição | Status |
|:---:|:---|:---:|
| `v1.0` | Sistema inicial com produtos, pedidos e estoque | 🟢 Concluído |
| `v2.0` | Implementação das melhorias das Turmas A e B | 🟡 Em desenvolvimento |

### 📦 Versão inicial

[**Sistema Lanchonete — v1.0**](sistema-lanchonete-programa.md)

---

# 📤 Entrega

Após a implementação das novas funcionalidades, o projeto deverá ser:

1. Testado pelas respectivas turmas;
2. Organizado no repositório;
3. Documentado;
4. Publicado no **GitHub do grupo**.

---

# 🎓 Atividade Acadêmica

Projeto desenvolvido durante o curso técnico de **Informática para Internet (INFONET)** da **ETEC Vasco Antônio Venchiarutti (ETECVAV)**.

---

<p align="center">
  <strong>🍔 Sistema para Lanchonete</strong><br>
  Projeto acadêmico • Python • JSON
</p>
