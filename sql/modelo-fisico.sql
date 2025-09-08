-- Ativar PostGIS
CREATE EXTENSION IF NOT EXISTS postgis;

-- Tipo: Acesso a dispositivos
CREATE TYPE tipo_acesso AS enum (
    'caixa',
    'enterrado',
    'acesso_livre',
    'pv',
    'tampa_t9'
);

-- Tipo: Água
CREATE TYPE tipo_agua AS enum (
    'bruta',
    'tratada'
);

-- Tipo: Bomba
CREATE TYPE tipo_bomba AS enum (
    'centrifuga',
    'submersa',
    'submersivel',
    'auto_aspirante',
    'periferica',
    'injetora'
);

-- Tipo: Captação
CREATE TYPE tipo_captacao AS enum (
    'superficial',
    'subterranea'
);

-- Tipo: Conexão
CREATE TYPE tipo_conexao AS enum (
    'adaptador',
    'cap',
    'colar_tomada',
    'cruzeta',
    'curva',
    'luva_uniao',
    'reducao',
    'te',
    'ventosa'
);

-- Tipo: Descarga
CREATE TYPE tipo_descarga AS enum (
    'boca_de_lobo',
    'corpo_hidrico',
    'galeria_pluvial',
    'poco_visita',
    'sarjeta'
);

-- Tipo: Forma
CREATE TYPE tipo_forma AS enum (
    'circular',
    'quadrado',
    'retangular'
);

-- Tipo: Função
CREATE TYPE tipo_funcao AS enum (
    'nenhuma',
    'entrada',
    'saida'
);

-- Tipo: Hidrante
CREATE TYPE tipo_hidrante AS enum (
    'coluna',
    'subterraneo'
);

-- Tipo: Lançamento (Ex. ponto de lançamento da descarga dagua)
CREATE TYPE tipo_lancamento AS enum (
    'descarga',
    'extravazamento',
    'padrao_saida'
);

-- Tipo: Manancial
CREATE TYPE tipo_manancial AS enum (
    'rio',
    'lago',
    'acude',
    'represa',
    'aquifero',
    'nascente'
);

-- Tipo: Material
CREATE TYPE tipo_material AS enum (
    'ca',
    'concreto',
    'fofo',
    'fgal',
    'prfv',
    'pvc',
    'pvc_corrugado',
    'pvc_defofo',
    'pead',
    'pead_corrugado',
    'aco',
    'tijolo'
);

-- Tipo: Medidor de Pressão
CREATE TYPE tipo_medidor_pressao AS enum (
    'bourbon',
    'diafragma',
    'tubo_u',
    'wireless'
);

-- Tipo: Medidor de Vazão
CREATE TYPE tipo_medidor_vazao AS enum (
    'eletromagnectico',
    'massica_coriolis',
    'rotametro',
    'ultrassonico',
    'vortex',
    'calha_parshall',
    'volumetrico',
    'velocimetro'
);

-- Tipo: Rede de água
CREATE TYPE tipo_rede_agua AS enum (
    'adutora',
    'distribuicao',
    'recalque'
);

-- Tipo: Reservatório
CREATE TYPE tipo_reservatorio AS enum (
    'apoiado',
    'elevado',
    'enterrado',
    'semi_enterrado'
);

-- Tipo: Situação
CREATE TYPE tipo_situacao AS enum (
    'ativa',
    'inativa',
    'em_contrucao'
);

-- Tipo: Tanque
CREATE TYPE tipo_tanque AS enum (
    'chamine_equilibrio',
    'reservatorio_hidropneumatico',
    'tanque_alimentacao_unidirecional'
);

-- Tipo: Nivel de tratamento
CREATE TYPE tipo_tratamento_nivel AS enum (
    'coagulacao',
    'floculacao',
    'decantacao',
    'flotacao',
    'filtracao',
    'desinfeccao',
    'fluoretacao',
    'correcao_ph'
);

-- Tipo: Válvula
CREATE TYPE tipo_valvula AS enum (
    'borboleta',
    'esferica',
    'gaveta',
    'redutora_pressao',
    'retencao'
);

-- Tipo: Acionamento da Válvula
CREATE TYPE tipo_valvula_acionamento AS enum (
    'eletrico',
    'manual_chave',
    'manual_volante',
    'mecanico'
);

-- Tipo: Função da Válvula
CREATE TYPE tipo_valvula_funcao AS enum (
    'bloqueio',
    'controle',
    'descarga',
    'redutora_pressao',
    'retencao'
);

-- Tipo: Posição da Válvula
CREATE TYPE tipo_valvula_posicao AS enum (
    'aberto',
    'fechado',
    'nao_aplicavel',
    'parcialmente_aberta'
);

-- Tabela: Bombas
CREATE TABLE IF NOT EXISTS bombas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo tipo_bomba NOT NULL,
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 50 AND 1000) NOT NULL,
    diametro_saida smallint CHECK (diametro_saida BETWEEN 50 AND 1000) NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    potencia numeric(6, 2) CHECK (potencia BETWEEN 0 AND 1000),
    pressao numeric(4, 1) CHECK (pressao BETWEEN 0 AND 100),
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Captações
CREATE TABLE IF NOT EXISTS captacoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    tipo tipo_captacao NOT NULL,
    capacidade numeric(6, 2) CHECK (capacidade BETWEEN 0 AND 1000),
    tipo_manancial tipo_manancial NOT NULL,
    nome_manancial varchar,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Conexões
CREATE TABLE IF NOT EXISTS conexoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo tipo_conexao NOT NULL,
    material tipo_material NOT NULL,
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 15 AND 1500) NOT NULL,
    diametro_saida smallint CHECK (diametro_saida BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

-- Tabela: Descargas
CREATE TABLE IF NOT EXISTS descargas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo tipo_lancamento NOT NULL,
    descarga tipo_descarga NOT NULL,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Estações Elevatórias de Água
CREATE TABLE IF NOT EXISTS estacoes_elevatorias (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    agua tipo_agua NOT NULL,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Estações Tratamento de Água
CREATE TABLE IF NOT EXISTS estacoes_tratamento (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    tratamento smallint[] NOT NULL, -- ISSUE: References tipo_tratamento_nivel (id).
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Hidrante
CREATE TABLE IF NOT EXISTS hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo tipo_hidrante NOT NULL,
    fabricante varchar(50),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100),
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Medidores de Pressão
CREATE TABLE IF NOT EXISTS medidores_pressao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo tipo_medidor_pressao NOT NULL,
    acesso tipo_acesso NOT NULL,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Medidores de Vazão
CREATE TABLE IF NOT EXISTS medidores_vazao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo tipo_medidor_vazao NOT NULL,
    agua tipo_agua NOT NULL,
    funcao tipo_funcao NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    acesso tipo_acesso NOT NULL,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

-- Tabela: Redes de Água
CREATE TABLE IF NOT EXISTS redes_agua (
    id serial PRIMARY KEY,
    geom geometry(linestring, 4674) NOT NULL,
    data_instalacao date,
    tipo tipo_rede_agua NOT NULL,
    agua tipo_agua NOT NULL,
    material tipo_material NOT NULL,
    diametro integer CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10) NOT NULL,
    extensao_digital numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Reservatórios
CREATE TABLE IF NOT EXISTS reservatorios (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    tipo tipo_reservatorio NOT NULL,
    volume integer CHECK (volume BETWEEN 0 AND 10000) NOT NULL,
    diametro numeric(4, 2) CHECK (diametro BETWEEN 0 AND 100),
    altura numeric(4, 2) CHECK (altura BETWEEN 0 AND 50),
    nivel_min numeric(4, 2) CHECK (nivel_min BETWEEN 0 AND 50),
    nivel_max numeric(4, 2) CHECK (nivel_max BETWEEN 0 AND 50),
    altura_base numeric(4, 2) CHECK (altura_base BETWEEN 0 AND 50),
    forma tipo_forma NOT NULL,
    material tipo_material NOT NULL,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Setores de abastecimento
CREATE TABLE IF NOT EXISTS setores_abastecimento (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE,
    observacoes varchar(255)
);

-- Tabela: Setores de medição
CREATE TABLE IF NOT EXISTS setores_medicao (
    id serial PRIMARY KEY,
    geom geometry(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE,
    observacoes varchar(255)
);

-- Tabela: Tanques de compensação
CREATE TABLE IF NOT EXISTS tanques_compensacao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalacao date,
    tipo tipo_tanque NOT NULL,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Unidades operacionais
CREATE TABLE IF NOT EXISTS unidades_operacionais (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE,
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Tabela: Válvulas
CREATE TABLE IF NOT EXISTS valvulas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    data_instalcao date,
    tipo tipo_valvula NOT NULL,
    funcao tipo_valvula_funcao NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    acionamento tipo_valvula_acionamento NOT NULL,
    acesso tipo_acesso NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    posicao tipo_valvula_posicao NOT NULL,
    qtd_voltas_fechar numeric(3, 1),
    situacao tipo_situacao NOT NULL,
    data_situacao date,
    localizacao varchar(255),
    observacoes varchar(255)
);

-- Índices espaciais
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
