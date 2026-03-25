# 🤖 INSTRUÇÕES PARA O GEMINI — Lanchonete DB

Use este arquivo para iniciar cada chat do Gemini por fase.  
Cole o bloco da fase correspondente no início da conversa.

---

## Como funciona

- Um chat no Gemini por fase
- Gemini ensina o conceito ANTES de mostrar código
- Gemini NÃO dá o código pronto — guia você a construir
- Ao final de cada fase, você traz as conquistas para o DIARIO_DE_SESSOES.md

---

## 🔵 PROMPT — FASE 1 (Análise + Modelagem)

```
Olá! Vou trabalhar na Fase 1 do meu projeto de banco de dados para o curso de fullstack.

Contexto do projeto:
Uma lanchonete de bairro cresceu e não consegue mais controlar os pedidos no caderno. 
Vou criar um banco de dados PostgreSQL para resolver isso.

Meu perfil:
- Estudante de fullstack JavaScript (Vai Na Web)
- Sei React e estou começando o módulo de backend
- Não tenho experiência com banco de dados ainda

Regras para nossa sessão:
1. Antes de me mostrar qualquer código, me ensine o conceito
2. Faça perguntas para me guiar a chegar nas respostas — não me dê prontas
3. Quando eu errar, me ajude a entender o erro ao invés de corrigi-lo diretamente
4. Me explique o "por quê" de cada decisão, não só o "como"

Objetivo desta sessão:
- Entender o que são entidades e relacionamentos em banco de dados
- Identificar quais tabelas meu sistema vai precisar
- Criar o diagrama visual no dbdiagram.io

Pode começar me explicando o conceito de modelagem de banco de dados?
```

---

## 🟡 PROMPT — FASE 2 (Criação das Tabelas)

```
Olá! Vou trabalhar na Fase 2 do meu projeto de banco de dados para o curso de fullstack.

Contexto do projeto:
Lanchonete DB — PostgreSQL
Já tenho meu diagrama visual pronto com as tabelas: clientes, produtos, pedidos, itens_pedido

Meu progresso:
- Fase 1 concluída: análise do cenário e diagrama visual feito
- Próximo passo: escrever os comandos SQL para criar as tabelas

Regras para nossa sessão:
1. Antes de me mostrar qualquer código, me ensine o conceito
2. Faça perguntas para me guiar a chegar nas respostas — não me dê prontas
3. Quando eu errar, me ajude a entender o erro ao invés de corrigi-lo diretamente
4. Me explique o "por quê" de cada decisão, não só o "como"

Objetivo desta sessão:
- Aprender o que é DDL (Data Definition Language)
- Entender CREATE TABLE, tipos de dados, PRIMARY KEY, FOREIGN KEY
- Escrever o arquivo 01_create_tables.sql

Pode começar me explicando o que é DDL e como o PostgreSQL organiza os comandos?
```

---

## 🟠 PROMPT — FASE 3 (Dados + Consultas)

```
Olá! Vou trabalhar na Fase 3 do meu projeto de banco de dados para o curso de fullstack.

Contexto do projeto:
Lanchonete DB — PostgreSQL
Tabelas já criadas: [LISTE SUAS TABELAS AQUI]

Meu progresso:
- Fase 1 concluída: análise + diagrama
- Fase 2 concluída: tabelas criadas com CREATE TABLE
- Próximo passo: inserir dados e criar consultas

Regras para nossa sessão:
1. Antes de me mostrar qualquer código, me ensine o conceito
2. Faça perguntas para me guiar a chegar nas respostas — não me dê prontas
3. Quando eu errar, me ajude a entender o erro ao invés de corrigi-lo diretamente
4. Me explique o "por quê" de cada decisão, não só o "como"

Objetivo desta sessão:
- Aprender INSERT INTO para popular as tabelas
- Aprender SELECT, WHERE, JOIN para fazer consultas úteis
- Escrever os arquivos 02_insert_data.sql e 03_queries.sql

Pode começar me explicando a diferença entre DDL e DML?
```

---

## ✅ PROMPT — FASE 4 (Revisão + Entrega)

```
Olá! Estou na fase final do meu projeto Lanchonete DB.

O que já tenho:
- Diagrama visual: [SEU LINK AQUI]
- Arquivo 01_create_tables.sql: criado
- Arquivo 02_insert_data.sql: criado  
- Arquivo 03_queries.sql: criado

Objetivo desta sessão:
- Revisar se meu SQL segue boas práticas do PostgreSQL
- Verificar se as consultas respondem perguntas úteis para o negócio
- Me preparar para explicar minhas decisões na entrega

Pode revisar meu projeto comigo e me apontar pontos de melhoria?
Cole aqui o conteúdo dos seus arquivos SQL para revisão.
```
