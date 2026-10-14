USE suporte_aplicacional;

-- INC-001: criar tabela de logs simulados
-- Sem alterar os dados originais

CREATE TABLE IF NOT EXISTS logs_aplicacao_simulados (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_encomenda INT,
    data_evento DATETIME,
    nivel VARCHAR(20),
    servico VARCHAR(100),
    mensagem VARCHAR(255)
);

-- INC-001: inserir logs ficticios para treino
-- Estes eventos nao sao logs reais da aplicacao

INSERT INTO logs_aplicacao_simulados
(id_encomenda, data_evento, nivel, servico, mensagem)
VALUES
(1002, '2026-10-13 16:41:37', 'INFO',
 'Encomendas', 'Encomenda criada'),

(1002, '2026-10-13 16:41:38', 'INFO',
 'Pagamentos', 'Notificacao de pagamento recebida'),

(1002, '2026-10-13 16:41:39', 'INFO',
 'Pagamentos', 'Pagamento aprovado'),

(1002, '2026-10-13 16:41:40', 'ERROR',
 'Encomendas', 'Falha ao atualizar estado da encomenda'),

(1002, '2026-10-13 16:41:41', 'WARN',
 'Monitorizacao', 'Encomenda permanece pendente');
