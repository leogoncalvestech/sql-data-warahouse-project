## 🏗️ FASE 1: ENGENHARIA DE DADOS (Data Warehouse)

A primeira fase garante que os dados brutos sejam extraídos, limpos e modelados em uma estrutura otimizada para consultas analíticas.

### 🖼️ Diagrama de Arquitetura

Este diagrama ilustra o fluxo de dados do sistema de origem (ERP/CRM) até o consumo no Data Warehouse:

![Diagrama de Arquitetura ETL](https://github.com/leogoncalvestech/sql-data-warahouse-project/blob/main/Diagrama%20architecture%201.png?raw=true)

### Especificações Técnicas

| Requisito | Detalhe | Solução de Engenharia |
| :--- | :--- | :--- |
| **Fontes de Dados** | Importação de dados de **ERP** e **CRM** via arquivos **CSV**. | Processo ETL (Extract, Transform, Load). |
| **Qualidade de Dados** | Limpeza e resolução de problemas de *Data Quality* antes da análise. | Implementação de lógica de padronização, tratamento de nulos e deduplicação na fase de Transformação. |
| **Integração & Modelo** | Combinação das fontes em um modelo único, *user-friendly* e otimizado. | **Modelagem Dimensional (Star Schema):** Criação de Tabelas Fato (Métricas) e Dimensão (Contexto) para agilizar o BI. |
| **Escopo (Dados Recentes)** | Foco apenas no conjunto de dados mais recente. **Não** há requisito de historização. | Processo de carregamento por **sobrescrita** (*truncate-and-load*). |
| **Documentação** | Fornecer documentação clara do modelo para stakeholders e equipe de análise. | Dicionário de Dados e Diagrama ER do Data Warehouse. |

---
