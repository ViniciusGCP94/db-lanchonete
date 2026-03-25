### DT-001 — preco_unidade em itens_pedido
Data: 24/03/2026 | Fase: 1

Decisão: adicionar coluna preco_unidade em itens_pedido

Justificativa: cria um "snapshot" do valor no momento da venda. 
Se o preço do produto mudar no futuro, o histórico financeiro 
permanece correto.

Alternativa descartada: buscar o preço sempre da tabela produtos 
— descartado porque quebraria pedidos antigos se o preço mudasse.

---

### DT-002 — Não salvar total em pedidos
Data: 24/03/2026 | Fase: 1

Decisão: não salvar o valor total na tabela pedidos

Justificativa: evita dados redundantes ou inconsistentes. 
O total será calculado em tempo real via consulta SQL na Fase 3.

Alternativa descartada: salvar o total direto na tabela — 
descartado por risco de dados "mentirosos" se os itens mudassem.

---

### DT-003 — Primary Keys com auto-incremento
Data: 24/03/2026 | Fase: 1

Decisão: usar IDs auto-incrementados em todas as tabelas

Justificativa: simplifica a manutenção e referência entre tabelas, 
inclusive na tabela intermediária itens_pedido.

### DT-004 — DECIMAL ao invés de FLOAT para valores monetários
Data: 25/03/2026 | Fase: 2

Decisão: usar DECIMAL(10,2) em preco e preco_unidade

Justificativa: FLOAT causa erros de arredondamento em cálculos
financeiros. DECIMAL garante precisão exata.

Alternativa descartada: FLOAT — descartado por imprecisão
em operações monetárias.

---

### DT-005 — ON DELETE SET NULL no produto_id
Data: 25/03/2026 | Fase: 2

Decisão: ao excluir um produto, o produto_id em itens_pedido
vira NULL ao invés de apagar o registro

Justificativa: preserva o histórico financeiro de vendas antigas
mesmo que o produto seja descontinuado.

Alternativa descartada: ON DELETE CASCADE — descartado pois
apagaria registros de vendas antigas junto com o produto.