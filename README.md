# 💾 Projeto Data Strategy: Data Warehouse no SQL Server e BI

Este projeto de ponta a ponta foca na construção de uma infraestrutura de dados moderna (Data Warehouse) e na entrega de análises estratégicas para a tomada de decisões de negócio.

A solução utiliza o **SQL Server** como o principal repositório de dados analíticos, consolidando informações vitais de vendas de sistemas operacionais distintos.

---

## 🎯 Objetivo Principal

Desenvolver um Data Warehouse moderno e eficiente para consolidar dados de vendas, capacitando a empresa com relatórios analíticos precisos e insights estratégicos.

---

## 🏗️ FASE 1: ENGENHARIA DE DADOS (Data Warehouse)

A primeira fase garante que os dados brutos sejam extraídos, limpos e modelados em uma estrutura otimizada para consultas analíticas.

### Especificações Técnicas

| Requisito | Detalhe | Solução de Engenharia |
| :--- | :--- | :--- |
| **Fontes de Dados** | Importação de dados de **ERP** e **CRM** via arquivos **CSV**. | Processo ETL (Extract, Transform, Load). 

[Image of ETL Process Diagram]
 |
| **Qualidade de Dados** | Limpeza e resolução de problemas de *Data Quality* antes da análise. | Implementação de lógica de padronização, tratamento de nulos e deduplicação na fase de Transformação. |
| **Integração & Modelo** | Combinação das fontes em um modelo único, *user-friendly* e otimizado. | **Modelagem Dimensional (Star Schema):** Criação de Tabelas Fato (Métricas) e Dimensão (Contexto) para agilizar o BI. 

[Image of Star Schema Diagram]
 |
| **Escopo (Dados Recentes)** | Foco apenas no conjunto de dados mais recente. **Não** há requisito de historização. | Processo de carregamento por **sobrescrita** (*truncate-and-load*). |
| **Documentação** | Fornecer documentação clara do modelo para stakeholders e equipe de análise. | Dicionário de Dados e Diagrama ER do Data Warehouse. |
![Uploading Diagrama architecture 1.png…]()

---

## 📈 FASE 2: ANÁLISE E RELATÓRIOS (Business Intelligence)

A segunda fase utiliza o Data Warehouse (DW) como fonte para gerar análises detalhadas baseadas em consultas **SQL**, fornecendo métricas-chave para o negócio.

### Focos de Insights (SQL-based Analytics)

O objetivo é empoderar os stakeholders com métricas acionáveis nas seguintes áreas:

1.  **Comportamento do Cliente**
    * *Insights:* Análise da distribuição de vendas por **Gênero** (do CRM) e cálculo do Ticket Médio por segmento.
    * *Impacto:* Informar campanhas de marketing e segmentação de clientes.

2.  **Performance do Produto**
    * *Insights:* Ranking de produtos por **Receita** e **Volume**. Análise de vendas por **Categoria**.
    * *Impacto:* Suportar decisões de estoque, precificação e ciclo de vida do produto.

3.  **Tendências de Vendas**
    * *Insights:* Análise temporal de vendas e comparações *Year-over-Year* (Ano a Ano).
    * *Impacto:* Fornecer KPIs estratégicos para o planejamento financeiro e metas anuais.
