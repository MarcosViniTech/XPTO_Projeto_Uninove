# 🛒 Sistema de Gestão de Vendas e Serviços — XPTO

Este repositório contém a documentação técnica, modelagem de dados e scripts SQL (DDL, DML e DQL) para o sistema de gestão da **XPTO**. 

O projeto foi projetado para registrar e controlar as vendas de licenças de software (**SaaS**), **Add-Ons** e a prestação de **serviços de tecnologia**.

---

## 📌 Índice
- [Visão Geral](#-visão-geral)
- [Diagrama Entidade-Relacionamento (DER)](#-diagrama-entidade-relacionamento-der)
- [Modelagem de Dados](#-modelagem-de-dados)
- [Estrutura de Arquivos](#-estrutura-de-arquivos)
- [Scripts SQL](#-scripts-sql)
  - [1. DDL — Estrutura](#1-ddl--data-definition-language)
  - [2. DML — Inserção de Dados](#2-dml--data-manipulation-language)
  - [3. DQL — Consultas](#3-dql--data-query-language)
- [Resultados da Execução no SGBD](#-resultados-da-execução-no-sgbd)
- [Como Executar o Projeto](#-como-executar-o-projeto)

---

## 🚀 Visão Geral

A solução permite mapear o ciclo completo de venda da XPTO:
- Cadastro e controle de **Clientes** (Pessoa Jurídica);
- Catálogo de **Produtos** (Planos SaaS e Add-Ons) com flag de status ativo/inativo;
- Catálogo de **Serviços** técnicos prestados pela equipe;
- Registro centralizado de **Vendas**;
- Detalhamento de itens de cada pedido (**Itens da Venda**), permitindo a combinação flexível de produtos e serviços em um mesmo pedido.

---

## 📊 Diagrama Entidade-Relacionamento (DER)

```mermaid
erDiagram
    CLIENTE ||--o{ VENDA : "realiza"
    VENDA ||--|{ ITEM_VENDA : "possui"
    PRODUTO ||--o{ ITEM_VENDA : "é contido em"
    SERVICO ||--o{ ITEM_VENDA : "é contido em"

    CLIENTE {
        int id_cliente PK
        string cnpj UK
        string razao_social UK
        string nome_fantasia UK
        string email UK
        string telefone
        string cidade
        string uf
        datetime data_cadastro
    }

    PRODUTO {
        int id_produto PK
        string nome_produto
        text descricao
        string categoria
        decimal preco_unitario
        boolean ativo
    }

    SERVICO {
        int id_servico PK
        string nome_servico
        text descricao
        decimal preco_servico
        boolean ativo
    }

    VENDA {
        int id_venda PK
        int id_cliente FK
    }

    ITEM_VENDA {
        int id_item PK
        int id_venda FK
        int id_produto FK
        int id_servico FK
        int quantidade
        decimal preco_aplicado
    }
