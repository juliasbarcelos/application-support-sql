USE suporte_aplicacional;

-- INC-001: simular uma mensagem tecnica detalhada
-- Este erro e ficticio e utilizado apenas para treino

INSERT INTO logs_aplicacao_simulados
(id_encomenda, data_evento, nivel, servico, mensagem)
VALUES
(1002, '2026-10-13 16:41:40', 'ERROR',
 'Encomendas',
 'Simulacao: falha de ligacao a base de dados durante a atualizacao do estado');
