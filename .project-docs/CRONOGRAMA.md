# 📅 CRONOGRAMA — Lanchonete DB

**Projeto:** Sistema de Pedidos — Lanchonete  
**Início:** 24/03/2026 às 09:00  
**Entrega:** 27/03/2026 às 23:59  
**Horas disponíveis:** ~2h/dia → 6h totais

---

## ⏱️ Visão Geral do Tempo

| Fase | Descrição | Quando | Estimativa |
|------|-----------|--------|------------|
| FASE 1 | Análise + Modelagem | 24/03 (hoje) | ~2h |
| FASE 2 | SQL: Criação das tabelas | 25/03 | ~2h |
| FASE 3 | SQL: Inserção + Consultas | 26/03 | ~1,5h |
| FASE 4 | Revisão + Entrega | 27/03 | ~0,5h |

---

## 🔵 FASE 1 — Análise do Cenário e Modelagem Visual
**📅 Dia: 24/03 | Duração estimada: 2h**  
**🎯 Objetivo:** Entender o problema, decidir as tabelas, criar o diagrama visual.

> Antes desta fase, leia: `ANALISE_CENARIO.md`

### Tasks

**TASK 1.1 — Análise do cenário**
- Leia o enunciado e escreva com suas palavras: qual é o problema? Quais informações precisam ser guardadas?
- Documente no `ANALISE_CENARIO.md`
- 📝 `git commit -m "docs: análise do cenário e identificação das entidades"`

**TASK 1.2 — Decisão das entidades (tabelas)**
- Defina quais tabelas o sistema vai ter e por quê
- Registre cada decisão no `DECISOES_TECNICAS.md`
- 📝 `git commit -m "docs: decisão das entidades e justificativas"`

**TASK 1.3 — Criação do diagrama visual**
- Acesse dbdiagram.io e construa o diagrama com as tabelas e relacionamentos
- Salve o link público em `docs/modelagem_visual_link.md`
- 📝 `git commit -m "docs: diagrama visual criado — link registrado"`

**TASK 1.4 — Registro da sessão**
- Preencha o `DIARIO_DE_SESSOES.md` com conquistas, desafios e decisões da sessão
- 📝 `git commit -m "docs: diário sessão 1 — fase de análise e modelagem"`

### 🚀 PUSH DA FASE 1
```bash
git push origin main
```
> **Antes do push**, revise o checklist no `DIARIO_DE_SESSOES.md` e anote tudo para o post do LinkedIn.

---

## 🟡 FASE 2 — Criação das Tabelas (DDL)
**📅 Dia: 25/03 | Duração estimada: 2h**  
**🎯 Objetivo:** Escrever os comandos SQL que criam a estrutura do banco.

> Conceitos que você vai aprender nesta fase: `CREATE TABLE`, `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `tipos de dados no PostgreSQL`

### Tasks

**TASK 2.1 — Setup do banco de dados**
- Crie o banco `lanchonete_db` no PostgreSQL
- Documente o comando usado
- 📝 `git commit -m "sql: setup inicial do banco lanchonete_db"`

**TASK 2.2 — Criação das tabelas principais**
- Escreva o arquivo `sql/01_create_tables.sql` com as tabelas do seu diagrama
- Teste rodando no PostgreSQL (pode usar o pgAdmin ou psql no terminal)
- 📝 `git commit -m "sql: criação das tabelas principais"`

**TASK 2.3 — Validação da estrutura**
- Rode os comandos e verifique se tudo foi criado corretamente
- Corrija erros encontrados e documente o que aprendeu
- 📝 `git commit -m "sql: ajustes e validação da estrutura das tabelas"`

**TASK 2.4 — Registro da sessão**
- Preencha o `DIARIO_DE_SESSOES.md` com conquistas, desafios e decisões da sessão
- 📝 `git commit -m "docs: diário sessão 2 — fase de criação das tabelas"`

### 🚀 PUSH DA FASE 2
```bash
git push origin main
```
> **Antes do push**, revise o checklist no `DIARIO_DE_SESSOES.md` e anote tudo para o post do LinkedIn.

---

## 🟠 FASE 3 — Inserção de Dados e Consultas (DML)
**📅 Dia: 26/03 | Duração estimada: 1,5h**  
**🎯 Objetivo:** Popular o banco com dados fictícios e criar consultas úteis.

> Conceitos que você vai aprender nesta fase: `INSERT INTO`, `SELECT`, `WHERE`, `JOIN`, `ORDER BY`

### Tasks

**TASK 3.1 — Inserção de dados fictícios**
- Escreva o arquivo `sql/02_insert_data.sql` com dados realistas (clientes, produtos, pedidos)
- Use nomes fictícios como pedido pelo enunciado
- 📝 `git commit -m "sql: inserção de dados fictícios de exemplo"`

**TASK 3.2 — Consultas básicas**
- Escreva o arquivo `sql/03_queries.sql` com pelo menos 3 consultas úteis para o negócio
- Exemplo: "todos os pedidos do dia", "produtos mais pedidos", "pedidos por cliente"
- 📝 `git commit -m "sql: consultas do sistema — pedidos, produtos e clientes"`

**TASK 3.3 — Teste completo do fluxo**
- Rode tudo do zero: create → insert → queries
- Corrija qualquer problema e documente
- 📝 `git commit -m "sql: validação completa do fluxo — criar, inserir e consultar"`

**TASK 3.4 — Registro da sessão**
- Preencha o `DIARIO_DE_SESSOES.md` com conquistas, desafios e decisões da sessão
- 📝 `git commit -m "docs: diário sessão 3 — fase de dados e consultas"`

### 🚀 PUSH DA FASE 3
```bash
git push origin main
```
> **Antes do push**, revise o checklist no `DIARIO_DE_SESSOES.md` e anote tudo para o post do LinkedIn.

---

## ✅ FASE 4 — Revisão Final e Entrega
**📅 Dia: 27/03 | Duração estimada: 0,5h**  
**🎯 Objetivo:** Garantir que tudo está em ordem para a entrega no Classroom.

### Tasks

**TASK 4.1 — Revisão geral**
- Leia todos os arquivos SQL e verifique se estão organizados e comentados
- Confira se o link do diagrama está no `docs/modelagem_visual_link.md`
- 📝 `git commit -m "chore: revisão final — arquivos organizados e prontos para entrega"`

**TASK 4.2 — Entrega no Google Classroom**
- Submeta o link do repositório GitHub e o link do diagrama visual
- 📝 `git commit -m "docs: entrega realizada — Google Classroom 27/03"`

### 🚀 PUSH FINAL
```bash
git push origin main
```

---

## 📌 Checklist de Cada Commit

Antes de cada commit, responda:
- [ ] O que eu implementei/aprendi?
- [ ] Qual foi o desafio? Como resolvi?
- [ ] Qual decisão tomei e por quê?

## 📌 Checklist de Cada Push (Final de Fase)

Antes de cada push, responda:
- [ ] Todas as tasks da fase têm commits?
- [ ] O diário da sessão está preenchido?
- [ ] Quais foram as 3 principais conquistas desta fase?
- [ ] Qual foi o maior desafio desta fase?
- [ ] O que eu aprendi que não sabia antes?
- [ ] O que vou destacar no post do LinkedIn sobre esta fase?
