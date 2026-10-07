SELECT 
  CLIENTE.nome_fantasia AS "Cliente", 
  VENDA.id_venda AS "Num_pedido", 
  PRODUTO.nome_produto AS "Produto Comprado", 
  ITEM_VENDA.quantidade AS "Qnt", 
  ITEM_VENDA.preco_aplicado AS "Valor"
FROM CLIENTE 
JOIN VENDA ON CLIENTE.id_cliente = VENDA.id_cliente 
JOIN ITEM_VENDA ON VENDA.id_venda = ITEM_VENDA.id_venda 
JOIN PRODUTO ON PRODUTO.id_produto = ITEM_VENDA.id_produto 
ORDER BY Cliente ASC;

SELECT 
  CLIENTE.nome_fantasia AS "Cliente", 
  VENDA.id_venda AS "Num_pedido", 
  SERVICO.nome_servico AS "Serviço Comprado", 
  ITEM_VENDA.quantidade AS "Qnt", 
  ITEM_VENDA.preco_aplicado AS "Valor"
FROM CLIENTE 
JOIN VENDA ON CLIENTE.id_cliente = VENDA.id_cliente 
JOIN ITEM_VENDA ON VENDA.id_venda = ITEM_VENDA.id_venda 
JOIN SERVICO ON SERVICO.id_servico = ITEM_VENDA.id_servico 
ORDER BY Cliente ASC;

SELECT 
  CLIENTE.nome_fantasia AS "Cliente", 
  VENDA.id_venda AS "Número do Pedido", 
  SUM(ITEM_VENDA.quantidade * ITEM_VENDA.preco_aplicado) AS "Total da Venda"
FROM CLIENTE 
JOIN VENDA ON CLIENTE.id_cliente = VENDA.id_cliente 
JOIN ITEM_VENDA ON VENDA.id_venda = ITEM_VENDA.id_venda 
GROUP BY CLIENTE.nome_fantasia, VENDA.id_venda;