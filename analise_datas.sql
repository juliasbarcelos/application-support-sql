USE suporte_aplicacional;

-- INC-001: comparar datas da encomenda
-- e do respetivo pagamento

SELECT
    e.id_encomenda,
    c.nome AS cliente,
    e.data_encomenda,
    p.data_pagamento,
    e.estado AS estado_encomenda,
    p.estado_pagamento
FROM encomendas e
INNER JOIN clientes c
    ON e.id_cliente = c.id_cliente
INNER JOIN pagamentos p
    ON e.id_encomenda = p.id_encomenda
WHERE e.id_encomenda = 1002;