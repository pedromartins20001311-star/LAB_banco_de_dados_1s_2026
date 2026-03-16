use biblioteca_pessoal_1s2026;
create table livro(
	id_livro int primary key auto_increment,
    id_usuario int,
    id_categoria int,
    id_autor int,
    id_editora int,
    titulo varchar(255) not null, 
    sinopse varchar(255) not null,
    ano_publicacao year, 
    lido boolean default false,
    data_cadastro timestamp,
    data_atualizacao timestamp,
    
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_categoria) references categoria(id_categoria),
    foreign key (id_autor) references autor(id_autor),
    foreign key (id_editora) references editora(id_editora)
    
);
show tables;