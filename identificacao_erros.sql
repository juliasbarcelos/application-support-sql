USE suporte_aplicacional;

-- INC-001: identificar erros nos logs simulados

SELECT
    id_log,
    data_evento,
    nivel,
    servico,
    mensagem
FROM logs_aplicacao_simulados
WHERE id_encomenda = 1002
  AND nivel = 'ERROR'
ORDER BY data_evento ASC;