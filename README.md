# Sistema de Gestão de Contas e Pagamentos

Este é um projeto de exemplo que consiste em um sistema de controle de contas e pagamentos. O código é escrito em SQL e pode ser utilizado em sistemas de gerenciamento de banco de dados relacionais.

O sistema é composto por duas tabelas: "CONTA" e "PAGTO". A tabela "CONTA" registra informações sobre as contas dos clientes, como o código da conta, a data da última atualização e o saldo atual. Já a tabela "PAGTO" registra informações sobre os pagamentos realizados pelos clientes, como o código do pagamento, a data do pagamento, o tipo de pagamento (crédito ou débito) e o valor do pagamento.

O projeto também inclui um gatilho (trigger) chamado "tr_pagamento" na tabela "PAGTO". Esse gatilho é responsável por atualizar o saldo das contas de acordo com os pagamentos registrados na tabela "PAGTO".

Pré-requisitos:
1. Sistema de gerenciamento de banco de dados relacional compatível com SQL (por exemplo, MySQL, SQL Server, PostgreSQL).
2. Permissões de criação de tabelas e gatilhos no banco de dados.
Como utilizar:
1. Crie um banco de dados vazio no seu sistema de gerenciamento de banco de dados relacional.
2. Execute o código SQL deste projeto para criar as tabelas "CONTA" e "PAGTO" e o gatilho "tr_pagamento" no seu banco de dados.
3. Utilize o sistema para registrar contas de clientes e pagamentos realizados.
4. O saldo das contas será atualizado automaticamente de acordo com os pagamentos registrados na tabela "PAGTO".
