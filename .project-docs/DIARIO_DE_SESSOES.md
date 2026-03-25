# 📓 DIÁRIO DE SESSÕES — Lanchonete DB

Registro cronológico de cada sessão de trabalho.  
Preencher **antes do push** de cada fase — estas anotações viram o post do LinkedIn.

---

## TEMPLATE DE SESSÃO

```
## Sessão [N] — [Data] | Fase [N]

**Duração:** ___h

### 🏆 Conquistas desta sessão
- 
- 
- 

### ⚔️ Desafios enfrentados
- **Desafio:** [descreva o problema]  
  **Como resolvi:** [descreva a solução]

### 🧠 O que aprendi
- 

### 🔧 Decisões tomadas
- 

### 📝 Próxima sessão começa em...
- 
```

---

## Sessão 1 — 24/03/2026 | Fase 1 (Análise + Modelagem)

Duração: ~2h

### 🏆 Conquistas
- Criação do ERD profissional no dbdiagram.io
- Definição precisa dos tipos de dados (varchar, decimal, integer)
- Estrutura lógica completa pronta para o SQL da Fase 2

### ⚔️ Desafios
- Desafio: entender como registrar vários produtos em um pedido 
  sem quebrar o banco
  Como resolvi: aprendi o conceito de relacionamento N:N e 
  apliquei a tabela intermediária itens_pedido

- Desafio: decidir se salvava ou não o total do pedido
  Como resolvi: entendi que dado calculável não deve ser salvo 
  para evitar inconsistência — o banco calcula na consulta

### 🧠 O que aprendi
- Modelagem relacional: transformar regras de negócio em entidades
- Chaves estrangeiras funcionam como "pontes" entre tabelas 
  (similar aos IDs em rotas dinâmicas do React)
- Desnormalização estratégica: quando duplicar um dado 
  (preco_unidade) é necessário para segurança histórica
- Normalização: separar informações em blocos lógicos conectados

### 🔧 Decisões tomadas
- 4 tabelas: clientes, produtos, pedidos, itens_pedido
- preco_unidade em itens_pedido para histórico financeiro
- Total do pedido calculado por consulta, não salvo em coluna
- PKs com auto-incremento em todas as tabelas

### 📝 Próxima sessão
- Fase 2: escrever o 01_create_tables.sql no PostgreSQL

---

## Sessão 2 — 25/03/2026 | Fase 2 (Criação das Tabelas)

Duração: ~2h

### 🏆 Conquistas
- Script SQL profissional e organizado criado (db-lanchonete-desafio.sql)
- Implementação de lógica de negócio real (histórico de preços) no banco
- Capacidade de identificar erros de sintaxe em códigos sugeridos por IAs

### ⚔️ Desafios
- Desafio: vírgulas faltando entre colunas e constraints no CREATE TABLE
  Como resolvi: identifiquei o erro analisando a sintaxe linha por linha

- Desafio: dúvida entre usar SERIAL ou INT nas chaves estrangeiras
  Como resolvi: entendi que SERIAL fica só na tabela de origem,
  FK usa INT para manter compatibilidade

- Desafio: ordem de criação das tabelas com dependências
  Como resolvi: tabelas "pai" (clientes/produtos) devem ser criadas
  antes das tabelas "filho" (pedidos/itens_pedido)

### 🧠 O que aprendi
- DDL: comandos que definem a estrutura do banco (CREATE, ALTER, DROP)
- Integridade referencial via chaves primárias e estrangeiras
- DROP TABLE IF EXISTS na ordem inversa para facilitar manutenção
- DECIMAL(10,2) ao invés de FLOAT para valores monetários

### 🔧 Decisões tomadas
- DECIMAL(10,2) para valores monetários — evita erros de arredondamento
- preco_unidade em itens_pedido — histórico financeiro confiável
- ON DELETE SET NULL no produto_id — não perde registro de vendas
  antigas se um produto for descontinuado

### 📝 Próxima sessão
- Fase 3: INSERT INTO para popular as tabelas e SELECT para consultas

---

## Sessão 3 — ___/03/2026 | Fase 3 (Dados + Consultas)

**Duração:** ___h

### 🏆 Conquistas desta sessão
- 
- 
- 

### ⚔️ Desafios enfrentados
- **Desafio:**  
  **Como resolvi:**  

### 🧠 O que aprendi
- 

### 🔧 Decisões tomadas
- 

### 📝 Próxima sessão começa em...
- 

---

## Sessão 4 — 27/03/2026 | Fase 4 (Revisão + Entrega)

**Duração:** ___h

### 🏆 Conquistas desta sessão
- 
- 

### ⚔️ Desafios enfrentados
- **Desafio:**  
  **Como resolvi:**  

### 🏁 Projeto entregue!
- Link GitHub:
- Link Diagrama:
- Horário da entrega:
