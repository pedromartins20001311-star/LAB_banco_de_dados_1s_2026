use biblioteca_pessoal_1s2026;
create table editora(
	id_editora int primary key  auto_increment,
    nome varchar(255) not null,
    pais varchar(64) not null,
    estado varchar(64) not null,
    cidade varchar(64) not null,
	data_cadastro timestamp,
    data_atualizacao timestamp
    
);
show tables;