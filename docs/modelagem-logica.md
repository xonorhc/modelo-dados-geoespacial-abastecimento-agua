# Modelo Lógico - Sistema de Distribuição de Água

```mermaid
erDiagram
    RESERVATORIO {
        id INT PK
        nome TEXT
        localizacao GEOMETRY(POINT, 4326)
    }

    REDE_DISTRIBUICAO {
        id INT PK
        nome TEXT
        linha_rede GEOMETRY(LINESTRING, 4326)
        reservatorio_id INT FK
    }

    PONTO_CONSUMO {
        id INT PK
        endereco TEXT
        localizacao GEOMETRY(POINT, 4326)
    }

    HIDROMETRO {
        id INT PK
        data_instalacao DATE
        ponto_consumo_id INT FK
        rede_id INT FK
    }
```
