USE suporte_aplicacional;

-- INC-001: analisar logs simulados
-- da encomenda 1002

SELECT
    id_log,
    data_evento,
    nivel,
    servico,
    mensagem
FROM logs_aplicacao_simulados
WHERE id_encomenda = 1002
ORDER BY data_evento ASC, id_log ASC;
