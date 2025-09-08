# Sistema de Abastecimento de Água - Modelagem de Dados

Este repositório contém as modelagens conceitual, lógica e física de um sistema de abastecimento de água com suporte a dados geoespaciais usando PostgreSQL + PostGIS.

## Estrutura

- `docs/modelagem-conceitual.md`: Diagrama conceitual em Mermaid
- `docs/modelagem-logica.md`: Diagrama lógico
- `sql/modelo-fisico.sql`: Script de criação do banco no PostgreSQL/PostGIS

## Requisitos

- PostgreSQL 15+
- PostGIS instalado

## Como usar

1. Criar o banco no PostgreSQL
2. Ativar a extensão PostGIS:
   ```sql
   CREATE EXTENSION postgis;
   ```
3. Executar o script SQL:
   ```bash
   psql -U usuario -d nome_banco -f sql/modelo-fisico.sql
   ```
