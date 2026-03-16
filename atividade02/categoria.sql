use biblioteca_pessoal_1s2026;
create table categoria(
	id_categoria int primary key auto_increment,
    nome varchar(255) not null,
    descricao text not null,
    data_cadastro timestamp,
    data_atualizacao timestamp
);
show tables;