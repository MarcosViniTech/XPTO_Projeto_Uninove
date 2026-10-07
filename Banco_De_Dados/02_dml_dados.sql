INSERT INTO CLIENTE (cnpj, razao_social, nome_fantasia, email, telefone, cidade, uf, data_cadastro) 
VALUES 
  ('77198317000109', 'Lopez Hall Refrigeração EPP', 'Refrigeração Lopez', 'refrigeracao.lopez@geradornv.com.br', '98974513263', 'Rio Branco', 'AC', NOW()),
  ('01746696000162', 'Iwamoto Quindeler Buffet LTDA', 'Buffet Iwamoto', 'buffet.iwamoto@geradornv.com.br', '3527186651', 'Boa Vista', 'RR', NOW()),
  ('27511618000172', 'Avilla Barsosa Papelaria EPP', 'Papelaria Avilla', 'papelaria.avilla@geradornv.com.br', '3839327176', 'Uberaba', 'MG', NOW()),
  ('68328691000190', 'Junior Calixto Turismo ME', 'Turismo Junior', 'turismo.junior@geradornv.com.br', '97988134785', 'Três Lagoas', 'MS', NOW()),
  ('66676774000145', 'Cunha Trindade Eletrônicos LTDA', 'Eletrônicos Cunha', 'eletronicos.cunha@geradornv.com.br', '3338171092', 'Caxias do Sul', 'RS', NOW());

INSERT INTO PRODUTO (nome_produto, descricao, categoria, preco_unitario, ativo) 
VALUES 
  ('XPTO STARTER', 'Sistema básico para controle de clientes e serviços', 'SAAS', 149.90, TRUE),
  ('XPTO PRO', 'Sistema intermediário que inclui clientes, serviços, controle de vendas e relatórios simples', 'SAAS', 299.90, TRUE),
  ('Cloud Backup', 'O backup em nuvem cria um espaço extra de banco de dados para uma melhor qualidade e segurança', 'Add-Ons', 99.90, TRUE);

INSERT INTO SERVICO (nome_servico, descricao, preco_servico, ativo) 
VALUES 
  ('Pacote de Migração de Dados', 'Pacote o qual é migrado os dados antigos do cliente para um novo sistema', 1200.00, TRUE),
  ('Treinamento de Equipe', 'Equipe especializada para o treinamento dos funcionários do cliente a usarem o sistema', 845.50, TRUE);

INSERT INTO VENDA (id_cliente) 
VALUES 
  (1), (2), (3), (4), (5);

INSERT INTO ITEM_VENDA (id_venda, id_produto, id_servico, quantidade, preco_aplicado) 
VALUES 
  (1, 2, NULL, 1, 299.90),
  (1, 3, NULL, 1, 99.90),
  (2, 1, NULL, 1, 149.90),
  (2, NULL, 2, 1, 845.50),
  (3, 1, NULL, 1, 149.90),
  (3, 3, NULL, 1, 99.90),
  (4, NULL, 2, 1, 845.50),
  (5, 3, NULL, 1, 99.90);