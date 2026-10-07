CREATE TABLE CLIENTE (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  cnpj CHAR(14) NOT NULL UNIQUE,
  razao_social VARCHAR(150) NOT NULL UNIQUE,
  nome_fantasia VARCHAR(150) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  telefone VARCHAR(11) NOT NULL,
  cidade VARCHAR(255) NOT NULL,
  uf CHAR(2) NOT NULL,
  data_cadastro DATETIME
);

CREATE TABLE PRODUTO (
  id_produto INT PRIMARY KEY AUTO_INCREMENT,
  nome_produto VARCHAR(100) NOT NULL,
  descricao TEXT(65535),
  categoria VARCHAR(50) NOT NULL,
  preco_unitario DECIMAL(10,2) NOT NULL,
  ativo BOOLEAN
);


CREATE TABLE SERVICO (
  id_servico INT PRIMARY KEY AUTO_INCREMENT,
  nome_servico VARCHAR(100) NOT NULL,
  descricao TEXT(65535),
  preco_servico DECIMAL(10,2),
  ativo BOOLEAN
);

CREATE TABLE VENDA (
  id_venda INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente)
);

CREATE TABLE ITEM_VENDA (
  id_item INT PRIMARY KEY AUTO_INCREMENT,
  id_venda INT NOT NULL,
  id_produto INT,
  id_servico INT,
  quantidade INT NOT NULL,
  preco_aplicado DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_venda) REFERENCES VENDA (id_venda),
  FOREIGN KEY (id_produto) REFERENCES PRODUTO (id_produto),
  FOREIGN KEY (id_servico) REFERENCES SERVICO (id_servico)
);