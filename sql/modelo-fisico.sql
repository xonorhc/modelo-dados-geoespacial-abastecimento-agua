-- Ativar PostGIS
CREATE EXTENSION IF NOT EXISTS postgis;

-- Tipo: Acesso a dispositivos
BEGIN;
CREATE TABLE tipo_acesso (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_acesso
VALUES
    (1, 'Caixa'),
    (2, 'Enterrado'),
    (3, 'Acesso livre'),
    (4, 'Poco de Visita'),
    (5, 'Tampa T9');
COMMIT;

-- Tipo: Água
BEGIN;
CREATE TABLE tipo_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_agua
VALUES
    (1, 'Bruta'),
    (2, 'Tratada');
COMMIT;

-- Tipo: Bomba
BEGIN;
CREATE TABLE tipo_bomba (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_bomba
VALUES
    (1, 'Centrifuga'),
    (2, 'Submersa'),
    (3, 'Submersivel'),
    (4, 'Auto-aspirante'),
    (5, 'Periferica'),
    (6, 'Injetora');
COMMIT;

-- Tipo: Captação
BEGIN;
CREATE TABLE tipo_captacao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_captacao
VALUES
    (1, 'Superficial'),
    (2, 'Subterraneo');
COMMIT;

-- Tipo: Conexão
BEGIN;
CREATE TABLE tipo_conexao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_conexao
VALUES
    (1, 'Adaptador'),
    (2, 'CAP'),
    (3, 'Colar de tomada'),
    (4, 'Cruzeta'),
    (5, 'Curva'),
    (6, 'Luva de uniao'),
    (7, 'Reducao'),
    (8, 'TE'),
    (9, 'Ventosa');
COMMIT;

-- Tipo: Ponto de descarga
BEGIN;
CREATE TABLE tipo_descarga (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_descarga
VALUES
    (1, 'Boca de Lobo'),
    (2, 'Corpo Hidrico'),
    (3, 'Galeria Pluvial'),
    (4, 'Poco Visita'),
    (5, 'Sarjeta');
COMMIT;

-- Tipo: Forma do ativo
BEGIN;
CREATE TABLE tipo_forma (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_forma
VALUES
    (1, 'Circular'),
    (2, 'Quadrado'),
    (3, 'Retangular');
COMMIT;

-- Tipo: Função do ativo
BEGIN;
CREATE TABLE tipo_funcao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_funcao
VALUES
    (1, 'Nenhum'),
    (2, 'Entrada'),
    (3, 'Saida');
COMMIT;

-- Tipo: Hidrante
BEGIN;
CREATE TABLE tipo_hidrante (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_hidrante
VALUES
    (1, 'Coluna'),
    (2, 'Subterraneo');
COMMIT;

-- Tipo: Método de lançamento
CREATE TABLE tipo_lancamento (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_lancamento
VALUES
    (1, 'Descarga'),
    (2, 'Extravazamento'),
    (3, 'Padrao de saida');

COMMIT;

-- Tipo: Manancial
BEGIN;
CREATE TABLE tipo_manancial (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_manancial
VALUES
    (1, 'Rio'),
    (2, 'Lago'),
    (3, 'Acude'),
    (4, 'Represa'),
    (5, 'Aquifero'),
    (6, 'Nascente');
COMMIT;

-- Tipo: Material
BEGIN;
CREATE TABLE tipo_material (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_material
VALUES
    (1, 'CA'),
    (2, 'Concreto'),
    (3, 'FoFo'),
    (4, 'FGal'),
    (5, 'PRFV'),
    (6, 'PVC'),
    (7, 'PVC Corrugado'),
    (8, 'PVC DeFoFo'),
    (9, 'PEAD'),
    (10, 'PEAD Corrugado'),
    (11, 'Aco'),
    (12, 'Tijolo');
COMMIT;

-- Tipo: Medidor de Pressão
BEGIN;
CREATE TABLE tipo_medidor_pressao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_medidor_pressao
VALUES
    (1, 'Bourbon'),
    (2, 'Diafragma'),
    (3, 'Tubo U'),
    (4, 'Wireless');
COMMIT;

-- Tipo: Medidor de Vazão (Macromedidor)
BEGIN;
CREATE TABLE tipo_medidor_vazao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_medidor_vazao
VALUES
    (1, 'Eletromagnetico'),
    (2, 'Massica coriolis'),
    (3, 'Rotametro'),
    (4, 'Ultrassonico'),
    (5, 'Vortex'),
    (6, 'Calha Parshall'),
    (7, 'Volumetrico'),
    (8, 'Velocimetrico');
COMMIT;

-- Tipo: Função da rede de água
BEGIN;
CREATE TABLE tipo_rede_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_rede_agua
VALUES
    (1, 'Adutora'),
    (2, 'Distribuicao'),
    (3, 'Recalque');
COMMIT;

-- Tipo: Instalação do reservatório
BEGIN;
CREATE TABLE tipo_reservatorio (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_reservatorio
VALUES
    (1, 'Apoiado'),
    (2, 'Elevado'),
    (3, 'Enterrado'),
    (4, 'Semi enterrado');
COMMIT;

-- Tipo: Situação do ativo
BEGIN;
CREATE TABLE tipo_situacao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_situacao
VALUES
    (1, 'Ativa'),
    (2, 'Inativa'),
    (3, 'Em construcao');
COMMIT;

-- Tipo: Tanque
BEGIN;
CREATE TABLE tipo_tanque (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_tanque
VALUES
    (1, 'Chamine de equilibrio'),
    (2, 'Reservatorio hidropneumatico'),
    (3, 'Tanque de alimentacao unidirecional');
COMMIT;

-- Tipo: Nivel de tratamento
BEGIN;
CREATE TABLE tipo_tratamento_nivel (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_tratamento_nivel
VALUES
    (1, 'Coagulacao'),
    (2, 'Floculacao'),
    (3, 'Decantacao'),
    (4, 'Flotacao'),
    (5, 'Filtracao'),
    (6, 'Desinfeccao'),
    (7, 'Fluoretacao'),
    (8, 'Correcao de PH'),
    (9, 'Outros (especificar na observacao)');
COMMIT;

-- Tipo: Válvula
BEGIN;
CREATE TABLE tipo_valvula (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_valvula
VALUES
    (1, 'Borboleta'),
    (2, 'Esferica'),
    (3, 'Gaveta'),
    (4, 'Redutora de pressao'),
    (5, 'Retencao');
COMMIT;

-- Tipo: Acionamento da Válvula
BEGIN;
CREATE TABLE tipo_valvula_acionamento (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_valvula_acionamento
VALUES
    (1, 'Eletrico'),
    (2, 'Manual Chave'),
    (3, 'Manual Volante'),
    (4, 'Mecanico');
COMMIT;

-- Tipo: Função da Válvula
BEGIN;
CREATE TABLE tipo_valvula_funcao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_valvula_funcao
VALUES
    (1, 'Bloqueio'),
    (2, 'Controle'),
    (3, 'Descarga'),
    (4, 'Redutora de pressao'),
    (5, 'Retencao');
COMMIT;

-- Tipo: Posição da Válvula
BEGIN;
CREATE TABLE tipo_valvula_posicao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO tipo_valvula_posicao
VALUES
    (1, 'Aberta'),
    (2, 'Fechada'),
    (3, 'Nao aplicavel'),
    (4, 'Parcialmente aberta');
COMMIT;

-- Tabela: Bombas
BEGIN;
CREATE TABLE IF NOT EXISTS bombas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_bomba (id) NOT NULL,
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 50 AND 1000) NOT NULL,
    diametro_saida smallint CHECK (diametro_saida BETWEEN 50 AND 1000) NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    potencia numeric(6, 2) CHECK (potencia BETWEEN 0 AND 1000),
    pressao numeric(4, 1) CHECK (pressao BETWEEN 0 AND 100),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Captações
BEGIN;
CREATE TABLE IF NOT EXISTS captacoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_captacao (id) NOT NULL,
    capacidade numeric(6, 2) CHECK (capacidade BETWEEN 0 AND 1000),
    tipo_manancial smallint REFERENCES tipo_manancial (id) NOT NULL,
    nome_manancial varchar,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Conexões
BEGIN;
CREATE TABLE IF NOT EXISTS conexoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_conexao (id) NOT NULL,
    material smallint REFERENCES tipo_material (id) NOT NULL,
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 15 AND 1500) NOT NULL,
    diametro_saida smallint CHECK (diametro_saida BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);
COMMIT;

-- Tabela: Descargas
BEGIN;
CREATE TABLE IF NOT EXISTS descargas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_lancamento (id) NOT NULL,
    descarga smallint REFERENCES tipo_descarga (id) NOT NULL,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Estações Elevatórias de Água
BEGIN;
CREATE TABLE IF NOT EXISTS estacoes_elevatorias (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    agua smallint REFERENCES tipo_agua (id) NOT NULL,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Estações Tratamento de Água
BEGIN;
CREATE TABLE IF NOT EXISTS estacoes_tratamento (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    tratamento smallint[] NOT NULL, -- ISSUE: Relacionar ao tipo_tratamento_nivel (id).
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Hidrante
BEGIN;
CREATE TABLE IF NOT EXISTS hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_hidrante (id) NOT NULL,
    fabricante varchar(50),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Hidrometro
BEGIN;
CREATE TABLE IF NOT EXISTS hidrometros (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_medidor_vazao (id) NOT NULL,
    codigo varchar(20) UNIQUE,
    diametro smallint CHECK (diametro BETWEEN 15 AND 150) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    acesso smallint REFERENCES tipo_acesso (id),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Medidores de Pressão
BEGIN;
CREATE TABLE IF NOT EXISTS medidores_pressao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_medidor_pressao (id),
    acesso smallint REFERENCES tipo_acesso (id),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Medidores de Vazão (Macromedidor)
BEGIN;
CREATE TABLE IF NOT EXISTS medidores_vazao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_medidor_vazao (id) NOT NULL,
    agua smallint REFERENCES tipo_agua (id) NOT NULL,
    funcao smallint REFERENCES tipo_funcao (id) NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    acesso smallint REFERENCES tipo_acesso (id),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);
COMMIT;

-- Table: Ramais de água
BEGIN;
CREATE TABLE IF NOT EXISTS ramais (
    id serial PRIMARY KEY,
    geom geometry(linestring, 4674) NOT NULL,
    data_instalacao date,
    material smallint REFERENCES tipo_material (id) NOT NULL,
    diametro integer CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10) NOT NULL,
    extensao_digital numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Redes de Água
BEGIN;
CREATE TABLE IF NOT EXISTS redes_agua (
    id serial PRIMARY KEY,
    geom geometry(linestring, 4674) NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_rede_agua (id) NOT NULL,
    agua smallint REFERENCES tipo_agua (id) NOT NULL,
    material smallint REFERENCES tipo_material (id) NOT NULL,
    diametro integer CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10) NOT NULL,
    extensao_digital numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Reservatórios
BEGIN;
CREATE TABLE IF NOT EXISTS reservatorios (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES tipo_reservatorio (id) NOT NULL,
    volume integer CHECK (volume BETWEEN 0 AND 10000) NOT NULL,
    diametro numeric(4, 2) CHECK (diametro BETWEEN 0 AND 100),
    altura numeric(4, 2) CHECK (altura BETWEEN 0 AND 50),
    nivel_min numeric(4, 2) CHECK (nivel_min BETWEEN 0 AND 50),
    nivel_max numeric(4, 2) CHECK (nivel_max BETWEEN 0 AND 50),
    altura_base numeric(4, 2) CHECK (altura_base BETWEEN 0 AND 50),
    forma smallint REFERENCES tipo_forma (id) NOT NULL,
    material smallint REFERENCES tipo_material (id) NOT NULL,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Setores de abastecimento
BEGIN;
CREATE TABLE IF NOT EXISTS setores_abastecimento (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE,
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Setores de medição
BEGIN;
CREATE TABLE IF NOT EXISTS setores_medicao (
    id serial PRIMARY KEY,
    geom geometry(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE,
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Tanques de compensação
BEGIN;
CREATE TABLE IF NOT EXISTS tanques_compensacao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES tipo_tanque (id) NOT NULL,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Unidades operacionais
BEGIN;
CREATE TABLE IF NOT EXISTS unidades_operacionais (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE,
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Tabela: Válvulas
BEGIN;
CREATE TABLE IF NOT EXISTS valvulas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalcao date,
    tipo smallint REFERENCES tipo_valvula (id) NOT NULL,
    funcao smallint REFERENCES tipo_valvula_funcao (id),
    diametro smallint CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    acionamento smallint REFERENCES tipo_valvula_acionamento (id),
    acesso smallint REFERENCES tipo_acesso (id),
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    posicao smallint REFERENCES tipo_valvula_posicao (id) NOT NULL,
    qtd_voltas_fechar numeric(3, 1),
    situacao smallint REFERENCES tipo_situacao (id) NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMIT;

-- Índices espaciais
BEGIN;
CREATE INDEX ON bombas USING gist (geom);
CREATE INDEX ON captacoes USING gist (geom);
CREATE INDEX ON conexoes USING gist (geom);
CREATE INDEX ON descargas USING gist (geom);
CREATE INDEX ON estacoes_elevatorias USING gist (geom);
CREATE INDEX ON estacoes_tratamento USING gist (geom);
CREATE INDEX ON hidrantes USING gist (geom);
CREATE INDEX ON medidores_pressao USING gist (geom);
CREATE INDEX ON medidores_vazao USING gist (geom);
CREATE INDEX ON redes_agua USING gist (geom);
CREATE INDEX ON reservatorios USING gist (geom);
CREATE INDEX ON setores_abastecimento USING gist (geom);
CREATE INDEX ON setores_medicao USING gist (geom);
CREATE INDEX ON tanques_compensacao USING gist (geom);
CREATE INDEX ON unidades_operacionais USING gist (geom);
CREATE INDEX ON valvulas USING gist (geom);
COMMIT;
