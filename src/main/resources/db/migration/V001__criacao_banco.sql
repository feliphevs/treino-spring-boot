create table COOPERATIVA (
    id serial primary key ,
    nome varchar(200),
    email varchar(200),
    logradouro varchar(200),
    ativo boolean
);

create table FAZENDEIRO (
  id serial primary key ,
  nome varchar(200),
  email varchar(200),
  telefone varchar(200)
);

create table COOPERATIVA_FAZENDEIRO (
  id_fazendeiro int,
  id_cooperativa int,
  CONSTRAINT cooperativa_fazendeiro_fk_fazendeiro FOREIGN KEY(id_fazendeiro) REFERENCES FAZENDEIRO(id),
  CONSTRAINT cooperativa_fazendeiro_fk_cooperativa FOREIGN KEY(id_cooperativa) REFERENCES COOPERATIVA(id)
);

create table FAZENDA (
  id serial primary key ,
  id_fazendeiro bigint,
  descricao varchar(200),
  area numeric,
  latitude numeric,
  longitude numeric,
  CONSTRAINT fazenda_fk_fazendeiro FOREIGN KEY(id_fazendeiro) REFERENCES FAZENDEIRO(id)
);

create table TIPO_EQUIPAMENTO (
    id serial primary key ,
    descricao varchar(200)
);

create table EQUIPAMENTO (
    id serial primary key ,
    id_tipo_equipamento int,
    descricao varchar(200),
    latitude numeric,
    longitude numeric,
    ativo boolean,
    CONSTRAINT equipamento_fk_tipo_equipamento FOREIGN KEY(id_tipo_equipamento) REFERENCES TIPO_EQUIPAMENTO(id)
);

create table PRODUTO (
    id serial primary key ,
    descricao varchar(200),
    latitude numeric,
    longitude numeric,
    ativo boolean
);

create table tipo_servico (
    id serial primary key ,
    descricao varchar(200)
);

create table ordem_servico (
    id serial primary key ,
    id_tipo_servico int,
    id_cooperativa int,
    id_fazenda int,
    id_equipamento int,
    id_produto int,
    rate_aplicacao float,
    total_aplicacao float,
    data_execucao date,
    CONSTRAINT ordem_servico_pk_tipo_servico FOREIGN KEY(id_tipo_servico) REFERENCES tipo_servico(id),
    constraint ordem_servico_pk_cooperativa foreign key (id_cooperativa) references cooperativa(id),
    constraint ordem_servico_pk_fazenda foreign key (id_fazenda) references fazenda(id),
    constraint ordem_servico_pk_equipamento foreign key (id_equipamento) references EQUIPAMENTO(id),
    constraint ordem_servico_pk_produto foreign key (id_produto) references PRODUTO(id)
);