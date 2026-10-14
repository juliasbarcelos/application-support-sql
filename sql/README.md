# Scripts SQL — Investigação INC-001

Esta pasta reúne os scripts utilizados na investigação do incidente INC-001.

**Tecnologia:** MySQL  
**Ambiente:** MySQL Workbench  
**Tipo de projeto:** Simulação de Suporte Aplicacional

## Scripts disponíveis

| Script | Finalidade |
|---|---|
| [investigacao_incidente.sql](investigacao_incidente.sql) | Identificar a inconsistência entre encomenda e pagamento |
| [validacao_valores.sql](validacao_valores.sql) | Verificar diferenças entre valores |
| [analise_geral_encomendas.sql](analise_geral_encomendas.sql) | Analisar encomendas com LEFT JOIN |
| [analise_datas.sql](analise_datas.sql) | Comparar datas da encomenda e do pagamento |
| [criacao_logs_simulados.sql](criacao_logs_simulados.sql) | Criar tabela e inserir logs fictícios |
| [consulta_logs.sql](consulta_logs.sql) | Consultar eventos cronologicamente |
| [identificacao_erros.sql](identificacao_erros.sql) | Filtrar eventos ERROR |
| [erro_detalhado_simulado.sql](erro_detalhado_simulado.sql) | Inserir mensagem técnica simulada |
| [comparacao_erros_simulados.sql](comparacao_erros_simulados.sql) | Comparar mensagens de erro |

## Conhecimentos aplicados

- SELECT e WHERE
- INNER JOIN e LEFT JOIN
- ORDER BY
- DESCRIBE
- CREATE TABLE
- INSERT INTO

## Cuidados na execução

Os scripts foram desenvolvidos para uma base de dados local de treino.

Os comandos INSERT INTO adicionam registos e não devem ser executados repetidamente sem verificar os dados existentes.

Os logs são fictícios e não demonstram uma falha real da aplicação.

## Documentação

[Consultar o relatório técnico INC-001](../incidents/INC-001.md)
