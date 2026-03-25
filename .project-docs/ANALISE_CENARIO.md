## 1. Qual é o problema?
A lanchonete de bairro cresceu e o controle manual em cadernos 
tornou-se ineficiente e propenso a erros. Havia risco de perda 
de dados e dificuldade em gerenciar o histórico de pedidos e 
clientes de forma organizada.

## 2. Quais informações precisam ser guardadas?
- Dados dos clientes (nome, telefone, endereço)
- Produtos do cardápio com preços vigentes
- Registro de cada pedido vinculado a um cliente e data
- Quais produtos compõem cada pedido e em qual quantidade

## 3. Quais são as entidades?
| Entidade     | O que representa                                        |
|--------------|---------------------------------------------------------|
| clientes     | Quem compra — evita repetir dados em cada venda         |
| produtos     | Cardápio atualizado com nomes e preços                  |
| pedidos      | Registro principal de que uma transação ocorreu         |
| itens_pedido | Tabela intermediária — lista os produtos de cada pedido |

## 4. Como se relacionam?
- clientes → pedidos (1:N): um cliente faz vários pedidos
- pedidos → itens_pedido (1:N): um pedido tem vários itens
- produtos → itens_pedido (1:N): um produto aparece em vários pedidos

## 5. Justificativa da solução
As 4 tabelas resolvem o problema porque separam as informações 
em blocos lógicos conectados por IDs, eliminando repetição e 
garantindo integridade dos dados — conceito de normalização.