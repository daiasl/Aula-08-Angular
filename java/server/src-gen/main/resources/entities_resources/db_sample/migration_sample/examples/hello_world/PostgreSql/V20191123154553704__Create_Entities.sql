/* Database: PostgreSql. Generation date: 2019-11-23 15:45:53:695 */
/* Entity ClienteEntity */
create table cliente (
	id VARCHAR(255),
	nome VARCHAR(255) NOT NULL,
	data_nascimento DATE NOT NULL /* dataNascimento */,
	credito_habilitado BOOLEAN /* creditoHabilitado */,
	cpf VARCHAR(255) NOT NULL,
	id_foto VARCHAR(255) /* idFoto */,
	ext VARCHAR(4000)
);



/* Entity ItemEntity */
create table item (
	id VARCHAR(255),
	descricao VARCHAR(255) NOT NULL,
	quantidade NUMERIC(19,4) NOT NULL,
	valor_unitario NUMERIC(19,4) NOT NULL /* valorUnitario */,
	ext VARCHAR(4000)
);



/* Entity PedidoEntity */
create table pedido (
	id VARCHAR(255),
	data DATE NOT NULL,
	observacoes VARCHAR(255),
	cliente VARCHAR(255) NOT NULL,
	ext VARCHAR(4000)
);



/* Join Tables */
/* master: pedido, detail: item */
create table pedido_itens (
	pedido_id VARCHAR(255) NOT NULL,
	itens_id VARCHAR(255) NOT NULL
);

/* Primary Key Constraints */
alter table cliente add constraint pk_cliente_id primary key(id);
alter table item add constraint pk_item_id primary key(id);
alter table pedido_itens add constraint pk_pedido_itens_pedido_id_ite primary key(pedido_id, itens_id);
alter table pedido add constraint pk_pedido_id primary key(id);

/* Foreign Key Constraints */
alter table pedido add constraint fk_pedido_ref_cliente foreign key (cliente) references cliente (id);
alter table pedido_itens add constraint fk_pedido_itens_pedido foreign key (pedido_id) references pedido (id);
alter table pedido_itens add constraint fk_pedido_itens_item foreign key (itens_id) references item (id);

/* Unique Key Constraints */
/* master: pedido, detail: item */
alter table pedido_itens add constraint uk_pedido_itens_itens_id unique (itens_id);
