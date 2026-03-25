# 🍔 Lanchonete DB — Sistema de Pedidos

Projeto prático do Módulo Backend (M2/N2) — Vai Na Web  
Banco de dados PostgreSQL para gerenciamento de pedidos de uma lanchonete local.

## Contexto

Uma lanchonete de bairro cresceu e não consegue mais controlar os pedidos no caderno.  
Este projeto resolve isso com um banco de dados estruturado, organizado e consultável.

## Stack Técnica

- **Banco de dados:** PostgreSQL
- **Modelagem visual:** dbdiagram.io (ou draw.io)
- **Versionamento:** Git + GitHub

## Estrutura do Projeto

```
lanchonete-db/
├── README.md
├── .project-docs/
│   ├── CRONOGRAMA.md
│   ├── ANALISE_CENARIO.md
│   ├── DECISOES_TECNICAS.md
│   ├── DIARIO_DE_SESSOES.md
│   └── INSTRUCOES_GEMINI.md
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   └── 03_queries.sql
└── docs/
    └── modelagem_visual_link.md
```

## Como usar

```bash
# Criar o banco
psql -U postgres -f sql/01_create_tables.sql

# Inserir dados de exemplo
psql -U postgres -d lanchonete_db -f sql/02_insert_data.sql

# Rodar as consultas
psql -U postgres -d lanchonete_db -f sql/03_queries.sql
```

## Entrega

- [ ] Arquivo SQL com criação, inserção e consultas
- [ ] Link do diagrama visual (dbdiagram.io)
- [ ] Submetido no Google Classroom até 27/03 às 23:59
