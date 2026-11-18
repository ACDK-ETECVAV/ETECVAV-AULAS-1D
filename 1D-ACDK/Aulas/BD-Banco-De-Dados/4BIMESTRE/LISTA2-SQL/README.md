Instruções
Conceitos: COUNT, SUM, AVG, MAX, MIN, GROUP BY, HAVING e junção de 2 e 3 tabelas pelo WHERE.
Agora com as alterações realizadas escreva as sintaxes para resolver as questões abaixo.
Copiar a resolução seguito do print da tela de resultado, colar no word e enviar em formato docx ou pdf.

1. Em um único SELECT, mostre a média salarial com 2 casas decimais e a diferença entre o maior e o menor salário da empresa (AMPLITUDE_SALARIAL).
2. Execute COUNT(*) e COUNT(ID_DEPARTAMENTO) sobre Funcionarios no mesmo SELECT. Os resultados são iguais? Explique o motivo.
3. Conte quantos dependentes existem para cada tipo de PARENTESCO, ordenando do mais frequente para o menos frequente.
4. Para cada ID_DEPARTAMENTO, mostre a quantidade de funcionários, a soma dos salários e a média salarial (2 casas), ordenando pela média da maior para a menor. O que aparece na linha com ID_DEPARTAMENTO NULL?
5. Liste apenas os departamentos que têm mais de 1 funcionário. Use HAVING.
6. Conte, por departamento, os funcionários admitidos de 2020 em diante. Explique por que o filtro de data vai no WHERE e não no HAVING.
7. Associe Funcionarios e Departamentos para listar NOME, EMAIL e NOME_DEPARTAMENTO apenas dos funcionários da TI. Use apelidos de tabela.
8. Associe Dependentes e Funcionarios para exibir NOME_DEPENDENTE, PARENTESCO, o nome do funcionário responsável e o salário dele, ordenado pelo nome do responsável.
9. Por NOME_DEPARTAMENTO (não pelo ID), mostre a quantidade de funcionários, a folha salarial total e a média salarial com 2 casas. Exiba só os departamentos cuja folha total passa de 10.000.
10. Usando as três tabelas, mostre por SIGLA de departamento a quantidade de dependentes e o maior salário entre os funcionários que têm dependentes. Em seguida, execute SELECT COUNT(*) FROM Funcionarios F, Departamentos D sem a condição no WHERE e explique o número obtido.
