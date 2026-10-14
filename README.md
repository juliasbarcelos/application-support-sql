# Suporte Aplicacional | Investigação de Incidentes com SQL

## Sobre o projeto

Este projeto apresenta uma investigação prática de um incidente de Suporte Aplicacional num sistema fictício de comércio eletrónico.

O objetivo é demonstrar competências de análise de dados, diagnóstico de inconsistências, investigação com SQL e documentação técnica.

O exercício foi desenvolvido num ambiente local com MySQL, utilizando dados fictícios e logs simulados.

**Estado do projeto:** Exercício concluído.

**Estado do incidente INC-001:** Investigação encerrada sem resolução técnica. Causa raiz não determinada.

---

## Cenário — INC-001

Uma encomenda permanece com o estado "Pendente", apesar de o respetivo pagamento estar aprovado.

| Campo | Informação |
|---|---|
| Incidente | INC-001 |
| Encomenda | 1002 |
| Cliente fictício | Bruno Costa |
| Valor da encomenda | 79,99 € |
| Valor pago | 79,99 € |
| Estado da encomenda | Pendente |
| Estado do pagamento | Aprovado |

O desafio consistiu em investigar a inconsistência, validar os dados relacionados e documentar as evidências disponíveis.

---

## Objetivos

- Investigar inconsistências em bases de dados relacionais.
- Relacionar informações de diferentes tabelas.
- Validar estados, valores e datas.
- Analisar logs simulados de uma aplicação.
- Identificar e comparar mensagens de erro.
- Formular hipóteses técnicas fundamentadas.
- Documentar procedimentos, resultados e limitações.

---

## Tecnologias e ferramentas

- MySQL
- MySQL Workbench
- SQL
- GitHub
- Google Drive
- Notion

### Conhecimentos SQL aplicados

- SELECT
- WHERE
- INNER JOIN
- LEFT JOIN
- ORDER BY
- DESCRIBE
- CREATE TABLE
- INSERT INTO

---

## Metodologia de investigação

### 1. Identificação da inconsistência

Foi utilizada uma consulta com INNER JOIN para relacionar as tabelas:

- clientes
- encomendas
- pagamentos

**Resultado:** identificada a encomenda 1002 com pagamento aprovado e estado pendente.

### 2. Validação dos valores

Foi realizada uma consulta para identificar pagamentos aprovados com valores diferentes dos valores das respetivas encomendas.

**Resultado:** nenhuma divergência encontrada nos registos abrangidos pela consulta.

### 3. Análise geral das encomendas

Foi utilizada uma consulta com LEFT JOIN para analisar os registos disponíveis.

**Resultado:** três encomendas apresentadas, sendo a encomenda 1002 a única com a inconsistência de estados identificada.

### 4. Análise da estrutura e das datas

Foram analisadas as estruturas das tabelas e comparadas as datas registadas da encomenda 1002 e do respetivo pagamento.

**Resultado:** ambas apresentam a data e hora 13/10/2026 16:41:37.

Esta coincidência não permite determinar o momento efetivo da aprovação do pagamento.

### 5. Investigação complementar com logs simulados

Foi criada uma tabela de logs fictícios para praticar a análise cronológica de eventos aplicacionais.

Foram inseridos cinco eventos iniciais e, posteriormente, um sexto evento com uma mensagem técnica mais detalhada.

Foram identificados dois eventos ERROR:

- Log 4: falha ao atualizar o estado da encomenda.
- Log 6: simulação de falha de ligação à base de dados.

**Resultado:** comparação entre uma mensagem de erro genérica e uma hipótese técnica mais específica.

Os eventos foram criados para treino e não constituem evidência da causa raiz do incidente original.

---

## Resultados e conclusões

A investigação permitiu:

- Confirmar a divergência entre os estados da encomenda e do pagamento.
- Verificar a correspondência entre os valores registados.
- Analisar as datas disponíveis.
- Identificar eventos ERROR em logs fictícios.
- Comparar mensagens de erro.
- Documentar os resultados e as limitações.

**Conclusão:** o exercício de investigação foi concluído, mas a causa raiz do incidente original não foi determinada.

Nenhuma alteração foi realizada aos registos originais das encomendas ou dos pagamentos.

---

## Documentação técnica

### Relatório do incidente

[Consultar relatório técnico INC-001](incidents/INC-001.md)

### Scripts SQL

| Script | Finalidade |
|---|---|
| [investigacao_incidente.sql](sql/investigacao_incidente.sql) | Identificação da inconsistência |
| [validacao_valores.sql](sql/validacao_valores.sql) | Validação dos valores |
| [analise_geral_encomendas.sql](sql/analise_geral_encomendas.sql) | Análise geral com LEFT JOIN |
| [analise_datas.sql](sql/analise_datas.sql) | Comparação das datas |
| [criacao_logs_simulados.sql](sql/criacao_logs_simulados.sql) | Criação dos logs fictícios |
| [consulta_logs.sql](sql/consulta_logs.sql) | Consulta cronológica dos logs |
| [identificacao_erros.sql](sql/identificacao_erros.sql) | Filtragem de eventos ERROR |
| [erro_detalhado_simulado.sql](sql/erro_detalhado_simulado.sql) | Inserção de erro técnico fictício |
| [comparacao_erros_simulados.sql](sql/comparacao_erros_simulados.sql) | Comparação de mensagens de erro |

### Evidências

As sete capturas de ecrã da investigação estão disponíveis na pasta:

[Consultar evidências](evidencias/)

---

## Competências demonstradas

- Investigação de incidentes aplicacionais.
- Consultas SQL em bases de dados relacionais.
- Identificação de inconsistências.
- Análise de logs e mensagens de erro simuladas.
- Raciocínio diagnóstico e formulação de hipóteses.
- Recolha e organização de evidências.
- Elaboração de relatórios técnicos.
- Organização e controlo de versões com GitHub.

---

## Recomendações para um ambiente real

Perante um incidente semelhante, seria necessário:

1. Consultar logs reais da aplicação.
2. Analisar códigos de erro e exceções.
3. Verificar o processamento e a integração dos pagamentos.
4. Confirmar as regras de atualização de estados.
5. Encaminhar o incidente para a equipa responsável.
6. Validar qualquer correção num processo autorizado.

---

## Nota sobre o ambiente

Este é um projeto pessoal de aprendizagem, desenvolvido com dados fictícios e logs simulados.

Não foram utilizados dados de clientes reais nem sistemas de produção.

Os scripts que inserem dados devem ser executados apenas num ambiente de treino, evitando duplicação de registos.

**Projeto concluído para fins de demonstração de competências técnicas**
