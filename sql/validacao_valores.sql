USE suporte_aplicacional;

-- INC-001: verificar divergencias de valores
-- entre encomendas e pagamentos

SELECT
    e.id_encomenda,
    c.nome AS cliente,
    e.valor_total,
    p.valor_pago,
    (e.valor_total - p.valor_pago) AS diferenca
FROM encomendas e
INNER JOIN clientes c
    ON e.id_cliente = c.id_cliente
INNER JOIN pagamentos p
    ON e.id_encomenda = p.id_encomenda
WHERE p.estado_pagamento = 'Aprovado'
  AND e.valor_total <> p.valor_pago;
