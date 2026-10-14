USE suporte_aplicacional;

-- INC-001: investigação de encomendas pendentes
-- com pagamentos aprovados

SELECT
    e.id_encomenda,
    c.nome AS cliente,
    e.valor_total,
    e.estado AS estado_encomenda,
    p.valor_pago,
    p.estado_pagamento
FROM encomendas e
INNER JOIN clientes c
    ON e.id_cliente = c.id_cliente
INNER JOIN pagamentos p
    ON e.id_encomenda = p.id_encomenda
WHERE e.estado = 'Pendente'
  AND p.estado_pagamento = 'Aprovado';
