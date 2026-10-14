USE suporte_aplicacional;

-- INC-001: comparar mensagens de erro simuladas

SELECT
    id_log,
    data_evento,
    nivel,
    servico,
    mensagem
FROM logs_aplicacao_simulados
WHERE id_encomenda = 1002
  AND nivel = 'ERROR'
ORDER BY data_evento ASC, id_log ASC;