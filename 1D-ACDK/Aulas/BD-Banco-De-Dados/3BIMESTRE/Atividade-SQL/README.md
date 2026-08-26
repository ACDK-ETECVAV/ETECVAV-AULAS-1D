Lista de Exercícios - SQL
Data de conclusão 2 de setembro de 2026 às 23:59
•
Vários envios permitidos
•
Fecha 4 de setembro de 2026 às 23:59
Instruções
01 - Você foi contratado como desenvolvedor na empresa Infonet.
Sua primeira tarefa e criar o ambiente de banco de dados da empresa.
Tarefa: Crie um banco de dados chamado bd_infonet.

02 - Após criar o banco, você precisa informar ao SQL Server
que deseja trabalhar dentro dele.
Tarefa: Escreva o comando para selecionar o banco bd_infonet para uso.

03 - O RH solicitou a criação de uma tabela para armazenar os dados
dos funcionários. Crie a tabela "funcionario" com os campos abaixo:
  - idFuncionario : inteiro, autoincrementado, chave primaria
  - nome          : texto ate 100 caracteres, obrigatorio
  - email         : texto ate 150 caracteres, unico
  - cidade        : texto ate 100 caracteres, obrigatorio
  - estado        : exatamente 2 caracteres, obrigatorio
  - setor         : texto ate 80 caracteres, obrigatorio
  - salario       : decimal com 2 casas, obrigatorio

04 - O RH enviou a lista dos primeiros funcionários a serem cadastrados.
Insira todos os registros abaixo na tabela funcionario:
  Ana Souza       | ana@infonet.com       | Sao Paulo        | SP | TI         | 5200.00
  Carlos Lima     | carlos@infonet.com    | Rio de Janeiro   | RJ | RH         | 3800.00
  Fernanda Costa  | fernanda@infonet.com  | Campinas         | SP | Financeiro | 4500.00
  Roberto Alves   | roberto@infonet.com   | Belo Horizonte   | MG | TI         | 6100.00
  Juliana Matos   | juliana@infonet.com   | Curitiba         | PR | Comercial  | 2900.00
  Marcos Pereira  | marcos@infonet.com    | Sao Paulo        | SP | RH         | 3200.00
  Patricia Nunes  | patricia@infonet.com  | Porto Alegre     | RS | Financeiro | 4100.00

05 - Ana Souza foi promovida.
Atualize seu salario para R$ 7.000,00 usando o idFuncionario.

06 - Todos os funcionários do setor RH foram realocados para
o setor "Gestao de Pessoas". Atualize todos de uma so vez.

07 - Patricia Nunes mudou de cidade e estado.
Atualize sua cidade para "Florianopolis" e estado para "SC"
em um único comando.

08 - Carlos Lima encerrou seu contrato.
Exclua o registro dele pelo idFuncionario.

09 - A empresa encerrou todas as atividades no estado RS.
Exclua todos os funcionários desse estado.

10 - Liste todos os funcionários que trabalham exatamente
no setor de TI. Retorne nome, email e salario.

11 - O financeiro quer identificar funcionários com salario
menor que R$ 4.000,00. Retorne nome, setor e salario.

12 - Liste todos os funcionarios que nao pertencem ao setor
de Financeiro. Retorne nome, cidade e setor.
