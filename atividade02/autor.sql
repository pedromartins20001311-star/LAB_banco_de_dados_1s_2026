use biblioteca_pessoal_1s2026;
create table autor(
	id_autor int primary key auto_increment,
    nome varchar(255) not null,
    ano_nascimento YEAR not null,
    ano_falecimento YEAR,
    apresentacao TEXT not null,
    data_cadastro timestamp,
    data_atualizacao timestamp
);
show tables;