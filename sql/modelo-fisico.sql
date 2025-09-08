-- Ativar PostGIS
CREATE EXTENSION IF NOT EXISTS postgis;

-- Tipo: Acesso ao dispositivo
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

-- Tipo: Lançamento
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

-- Tabela: Reservatórios
-- Índices espaciais
