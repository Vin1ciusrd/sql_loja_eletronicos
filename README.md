# Projeto SQL: Análise de Dados de uma Loja de Eletrônicos

Este projeto tem como objetivo demonstrar habilidades em SQL, utilizando um banco de dados de uma loja de eletrônicos para praticar a criação, inserção e consulta de dados. A partir de um conjunto de dados simulado, o projeto aborda desde consultas básicas de seleção até análises mais complexas que respondem a perguntas de negócio.

## Objetivo do Projeto
O principal objetivo deste projeto é explorar e manipular dados de um ambiente de comércio eletrônico, respondendo a questões comuns de análise de negócio, como:

Quais são os produtos mais vendidos?

Qual cliente gerou o maior valor total de pedidos?

Quantos pedidos são feitos por mês?

Quais clientes ainda não realizaram nenhuma compra?

Qual o valor médio dos pedidos?

## Estrutura do Projeto
O projeto está organizado em scripts SQL que cobrem todas as etapas, desde a criação do banco de dados até as consultas analíticas. A estrutura é a seguinte:

1. criar_base_dados.sql: Script responsável por definir o esquema do banco de dados, incluindo a criação das tabelas (clientes, produtos, pedidos, etc.) e a definição dos relacionamentos entre elas.

2. inserir_dados_base.sql: Script que adiciona dados às tabelas fictícias, criando um ambiente de teste funcional para as consultas.

3. consultas.sql: Contém uma série de consultas SQL, divididas por nível de complexidade (Básico, Intermediário e Avançado).

## Consultas de Análise
O arquivo consultas.sql apresenta soluções para alguns desafios divididos em 3 partes, demonstrando proficiência em diferentes aspectos do SQL:

1. Consultas de Nível Básico: Foco na extração e filtragem inicial de dados. Aborda a seleção de informações de clientes e produtos, utilizando a cláusula WHERE para filtrar registros e ORDER BY para organizar os resultados de forma significativa.

2. Consultas de Nível Intermediário: Análise aprofundada de dados transacionais, como pedidos. Utiliza JOINs para combinar informações de múltiplas tabelas, e funções de agregação (SUM, COUNT, AVG) em conjunto com GROUP BY para calcular métricas importantes como o valor total e o número de pedidos por cliente.

3. Consultas de Nível Avançado: Foco em insights estratégicos para a tomada de decisão. As consultas demonstram o uso de JOINs múltiplos, a cláusula HAVING e a combinação de GROUP BY, ORDER BY e LIMIT para identificar padrões específicos, como o cliente com maior gasto total, os produtos mais vendidos e detalhes completos de pedidos.

Essas consultas fornecem insights valiosos que podem apoiar a tomada de decisões estratégicas, como a formulação de campanhas de marketing personalizadas, a otimização do estoque com base nos produtos mais vendidos e a identificação de clientes-chave para programas de fidelidade.

## Como Executar o Projeto

Para executar este projeto em sua máquina local, siga os passos abaixo:

1.  **Clone este repositório:**
    ```bash
    git clone https://github.com/[seu-usuario]/[nome-do-repositorio].git
    ```
2.  **Execute os scripts SQL:**
    * Primeiro, execute o script `criar_base_dados.sql` no seu SGBD para criar as tabelas.
    * Em seguida, execute o script `inserir_dados_base.sql` para popular as tabelas com dados.
    * Por fim, execute o script `consultas.sql` para ver os resultados das análises.

## Tecnologias Utilizadas

* **SQL**: Linguagem de consulta para gerenciamento de dados.
* **MySQL/PostgreSQL/SQLite**: O projeto é compatível com a maioria dos SGBDs.

## Aprendizados
Este projeto reforçou conceitos como modelagem relacional, uso de joins, funções agregadoras e a importância da análise de dados para decisões estratégicas.

## Contribuição

Contribuições são bem-vindas! Se você tiver alguma sugestão, melhoria ou encontrar algum problema, sinta-se à vontade para entrar em contato.
