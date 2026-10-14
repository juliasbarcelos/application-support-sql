USE suporte_aplicacional;

-- INC-001: analisar todas as encomendas
-- e os respetivos pagamentos

SELECT
    e.id_encomenda,
    c.nome AS cliente,
    e.estado AS estado_encomenda,
    p.estado_pagamento,
    e.valor_total,
    p.valor_pago
FROM encomendas e
INNER JOIN clientes c
    ON e.id_cliente = c.id_cliente
LEFT JOIN pagamentos p
    ON e.id_encomenda = p.id_encomenda
ORDER BY e.id_encomenda;
